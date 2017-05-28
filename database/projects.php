<?php

include_once('../config/init.php');

/**
 * Adds the user to the database. The user is created in the USER group.
 * @param $ownerId int project's creator id
 * @param $name string project's chosen name
 * @param $description string project's chosen description
 * @param $isVisible string project's chosen visibility (true - public, false - private)
 * @return array Error info.
 */
function createProject($creatorId, $name, $description, $isVisible)
{
    global $conn;
    $statement = $conn->prepare('INSERT INTO project (name, description, visible) VALUES(?, ?, ?)');
    $statement->execute([$name, $description, $isVisible == 'true']);
    $projectId = $conn->lastInsertId();

    $statement = $conn->prepare('INSERT INTO project_user_role (project_id, user_id, role) VALUES(?, ?, ?)');
    $statement->execute([$projectId, $creatorId, 'Coordinator']);
    return $statement->errorInfo();
}

/**
 * Searches all projects given the query sentence
 * @param $query string The search string.
 * @return array All results.
 */
function searchProjects($query)
{
    global $conn;

    $statement = $conn->prepare(
        'SELECT project.id, project.name, description, state.name AS state_name, collaborators.nr AS num_collaborators 
      FROM project LEFT JOIN state ON project.state_id = state.id, 
      (SELECT project_id, count(*) AS nr FROM project_user_role GROUP BY project_id) AS collaborators 
      WHERE collaborators.project_id = project.id AND (to_tsvector(\'english\', project.name || \' \' || project.description) @@ to_tsquery(\'english\', ?) 
      OR project.name ILIKE \'%\' || ? || \'%\')');
    $statement->execute([$query, $query]);
    return $statement->fetchAll();
}

/**
 *
 * @param
 * @return
 */
function getProjectField($projectId, $field)
{
    global $conn;

    $statement = $conn->prepare('SELECT * FROM project WHERE id = ?');
    $statement->execute([$projectId]);
    return $statement->fetch()[$field];
}

/**
 *
 * @param
 * @return
 */
function getNumProjectCollaborators($projectId)
{
    global $conn;

    $statement = $conn->prepare('SELECT count(*) FROM project_user_role WHERE project_id = ?');
    $statement->execute([$projectId]);
    return $statement->fetch()['count'];
}

/**
 *
 * @param
 * @return
 */
function getProjectState($projectId)
{
    global $conn;

    $statement = $conn->prepare('SELECT state.name FROM project LEFT JOIN state ON project.state_id = state.id WHERE project.id = ?');
    $statement->execute([$projectId]);
    return $statement->fetch()['name'];
}

/**
 *
 * @param
 * @return
 */
function getProjectTasks($projectId)
{
    global $conn;

    $statement = $conn->prepare('SELECT title, visible, state.name, end_date
                                 FROM task LEFT JOIN state ON task.state_id = state.id LEFT JOIN milestone ON task.milestone_id = milestone.id
                                 WHERE task.project_id = ?');
    $statement->execute([$projectId]);
    return $statement->fetchAll();
}

/**
 * @param
 * @return
 */
function getProjectPosts($projectId)
{
    global $conn;
    $statement = $conn->prepare('SELECT post.id, title, text, authenticated_user.name AS creator_name, likes.num_likes 
                                 FROM post INNER JOIN authenticated_user ON post.creator_id = authenticated_user.id, 
                                 (SELECT post_id, count(*) AS num_likes FROM post_like GROUP BY post_id) AS likes 
                                 WHERE likes.post_id = post.id AND post.project_id = ?');
    $statement->execute([$projectId]);
    return $statement->fetchAll();
}

/**
 * @param
 * @return
 */
function getProjectCollaborators($projectId)
{
    global $conn;
    $statement = $conn->prepare('SELECT authenticated_user.name, authenticated_user.username, authenticated_user.picture, 
                                authenticated_user.email, project_user_role.role FROM authenticated_user INNER JOIN project_user_role 
                                ON authenticated_user.id = project_user_role.user_id WHERE project_user_role.project_id = ?');
    $statement->execute([$projectId]);
    return $statement->fetchAll();
}

/**
 *
 * @param
 * @return
*/
function getProjectMilestones($projectId)
{
    global $conn;

    $statement = $conn->prepare('SELECT end_date, begin_date, milestone.name FROM milestone WHERE milestone.project_id=?');
    $statement->execute([$projectId]);
    return $statement->fetchAll();
}