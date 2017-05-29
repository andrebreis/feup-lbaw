<?php

include_once('../config/init.php');

/**
 * Adds the user to the database. The user is created in the USER group.
 * @param $username string User's chosen name to use as login
 * @param $password string User's password, it is assumed that it is already hashed.
 * @param $email string User email
 * @param $name string User real life name
 * @return array Error info.
 */
function createUser($username, $password, $email, $name)
{
    global $conn;
    $statement = $conn->prepare('INSERT INTO authenticated_user (username, password, email, name) VALUES(?, ?, ?, ?)');
    $statement->execute([$username, $password, $email, $name]);
    return $statement->errorInfo();
}

/** Queries the database to check if user with $id exists.
 * @param $id int $id to check
 * @return bool Returns false if the id does not exist, returning true otherwise.
 */
function idExists($id)
{
    global $conn;
    $statement = $conn->prepare('SELECT * FROM authenticated_user WHERE id = ?');
    $statement->execute([$id]);
    return $statement->fetch();
}

/** Queries the database to check if user with $username exists.
 * @param $username string $username to check
 * @return bool Returns false if the username does not exist, returning true otherwise.
 */
function usernameExists($username)
{
    global $conn;
    $statement = $conn->prepare('SELECT * FROM authenticated_user WHERE username = ?');
    $statement->execute([$username]);
    return $statement->fetch();
}

/** Queries the database to check if a user with $email exists.
 * @param $email string $email to check
 * @return bool Returns false if the email does not exist, returning true otherwise.
 */
function emailExists($email)
{
    global $conn;
    $statement = $conn->prepare('SELECT * FROM authenticated_user WHERE email = ?');
    $statement->execute([$email]);
    return $statement->fetch();
}

/** Gets ID by username
 * @param $username string Username
 * @return int ID
 */
function getIdByUsername($username)
{
    global $conn;
    $statement = $conn->prepare('SELECT id FROM authenticated_user WHERE username = ?');
    $statement->execute([$username]);
    return $statement->fetch()['id'];
}

/** Returns the user's requested field. The field cannot be the user password.
 * @param $userId int User ID
 * @param $field string Field
 * @return string
 */
function getUserField($userId, $field)
{
    if ($field === 'password')
        return null;
    global $conn;
    $statement = $conn->prepare('SELECT * FROM authenticated_user WHERE id = ?');
    $statement->execute([$userId]);
    return $statement->fetch()[$field];
}

/** Returns the projects the user participates in.
 * @param $userId int User ID
 * @return string
 */
function getUserProjects($userId)
{
    global $conn;
    $statement = $conn->prepare('SELECT project.id, project.name, description, state.name AS state_name, collaborators.nr AS num_collaborators 
      FROM project INNER JOIN project_user_role ON project.id = project_user_role.project_id LEFT JOIN state ON project.state_id = state.id, 
      (SELECT project_id, count(*) AS nr FROM project_user_role GROUP BY project_id) AS collaborators 
      WHERE collaborators.project_id = project.id AND project_user_role.user_id = ?');
    $statement->execute([$userId]);
    return $statement->fetchAll();
}

/**
 * Searches all users given the query sentence
 * @param $query string The search string.
 * @return array All results.
 */
function searchUsers($query)
{
    global $conn;

    $statement = $conn->prepare(
        'SELECT id, username, name, picture, email FROM authenticated_user WHERE to_tsvector(\'english\', username || \' \' || name) @@ to_tsquery(\'english\', ?) 
      OR name ILIKE \'%\' || ? || \'%\' 
      OR username ILIKE \'%\' || ? || \'%\'');
    $statement->execute([$query, $query, $query]);
    return $statement->fetchAll();
}

/**
 * Lists the user as a collaborator for given project
 * @param $user given user id
 * @param $projectId given project id
 * @return array error info
 */
function joinProject($userId, $projectId)
{
    global $conn;

    $statement = $conn->prepare('INSERT INTO project_user_role (user_id, project_id, role) VALUES(?, ?, ?)');
    $statement->execute([$userId, $projectId, 'Collaborator']);
    return $statement->errorInfo();
}

/**
 * Removes the user from given project
 * @param $user given user id
 * @param $projectId given project id
 * @return array error info
 */
function leaveProject($userId, $projectId)
{
    global $conn;

    $statement = $conn->prepare('DELETE FROM project_user_role WHERE user_id = ? AND project_id = ?');
    $statement->execute([$userId, $projectId]);
    // var_dump($statement->errorInfo());
    return $statement->errorInfo();
}

/** Queries the database to check if user with given id collaborates to given project
 * @param $userId int $userId to check
 * @param $projectId int $projectId to check
 * @return bool Returns false if the user isnt a contributor, returning true otherwise.
 */
function isProjectCollaborator($userId, $projectId)
{
    global $conn;

    $statement = $conn->prepare('SELECT * FROM project_user_role WHERE user_id = ? and project_id = ?');
    $statement->execute([$userId, $projectId]);
    return $statement->fetch();
}

function getUserMessages($userId)
{
    global $conn;

    $statement = $conn->prepare('SELECT thread.subject, authenticated_user.id, authenticated_user.username, message.text, message.seen, report, invite 
                              FROM message INNER JOIN thread ON thread.id = message.thread_id 
                              INNER JOIN authenticated_user ON message.sender_id = authenticated_user.id LEFT JOIN report ON message.id = report.message_id LEFT JOIN invite ON message.id = invite.message_id 
                              WHERE ? IN (SELECT user_id FROM user_thread WHERE thread_id = thread.id)');
    $statement->execute([$userId]);
    return $statement->fetchAll();
}

function getUserStatistics($userId)
{
    global $conn;

    $stats = [];

    $statement = $conn->prepare('SELECT count(*) AS num_contributions FROM project_user_role WHERE user_id = ?');
    $statement->execute([$userId]);
    $stats['num_contributions'] = $statement->fetch()['num_contributions'];
    $statement = $conn->prepare('SELECT count(*) AS num_coordinations FROM project_user_role WHERE user_id = ? AND role=\'Coordinator\'');
    $statement->execute([$userId]);
    $stats['num_coordinations'] = $statement->fetch()['num_coordinations'];
    $statement = $conn->prepare('SELECT count(*) AS num_tasks FROM task INNER JOIN state ON task.state_id = state.id WHERE creator_id = ? AND state.name = \'Finished\'');
    $statement->execute([$userId]);
    $stats['num_tasks'] = $statement->fetch()['num_tasks'];
    $statement = $conn->prepare('SELECT count(*) AS num_finished_projects FROM project INNER JOIN project_user_role ON project.id = project_user_role.project_id WHERE user_id = ? AND project.completion = 100');
    $statement->execute([$userId]);
    $stats['num_finished_projects'] = $statement->fetch()['num_finished_projects'];
    $statement = $conn->prepare('SELECT count(*) as num_posts FROM post WHERE creator_id = ?');
    $statement->execute([$userId]);
    $stats['num_posts'] = $statement->fetch()['num_posts'];
    $statement = $conn->prepare('SELECT count(*) AS num_comments FROM comment WHERE user_id = ?');
    $statement->execute([$userId]);
    $stats['num_comments'] = $statement->fetch()['num_comments'];


    return $stats;
}

function getUsers()
{
    global $conn;
    $statement = $conn->prepare('SELECT username FROM authenticated_user');
    $statement->execute();
    return $statement->fetchAll();

}


function userHasUserPermission($userId){
	global $conn;
	
	if(!isset($userId))
		return false;
	
	$statement = $conn->prepare('SELECT is_admin FROM authenticated_user WHERE user_id = ?');
	$statement->execute([$userId]);
	if($statement->fetch() == true)
		return true;

}

function userHasProjectPermission($userId, $projectId){
	global $conn;
	
	if(!isset($userId))
		return false;
	
	$statement = $conn->prepare('SELECT is_admin FROM authenticated_user WHERE user_id = ?');
	$statement->execute([$userId]);
	if($statement->fetch() == true)
		return true;
	
	$statement = $conn->prepare('SELECT role FROM project_user_role WHERE user_id = ? AND project_id = ?');
	$statement->execute([$userId,$projectId]);
	if($statement->fetch() == 'Coordinator' || $statement->fetch() == 'Collaborator')
		return true;
	
	
}
