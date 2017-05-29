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

    $statement = $conn->prepare('SELECT task.id, title, visible, state.name, end_date
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
    $statement = $conn->prepare('SELECT post.id, title, text, authenticated_user.id AS creator_id, authenticated_user.name AS creator_name, authenticated_user.picture AS creator_picture,
                                  (SELECT count(*) FROM post_like WHERE post_id = post.id) AS num_likes
                                 FROM post INNER JOIN authenticated_user ON post.creator_id = authenticated_user.id 
                                 WHERE post.project_id = ?');
    $statement->execute([$projectId]);
    return $statement->fetchAll();
}

/**
 * @param
 * @return
 */
 function getForumPost($postId) 
 { 
     global $conn; 
     $statement = $conn->prepare('SELECT post.id, title, text, authenticated_user.id AS creator_id, authenticated_user.name AS creator_name, authenticated_user.picture AS creator_picture, 
                                   (SELECT count(*) FROM post_like WHERE post_id = post.id) AS num_likes
                                  FROM post INNER JOIN authenticated_user ON post.creator_id = authenticated_user.id 
                                  WHERE post.id = ?');
     $statement->execute([$postId]); 
     return $statement->fetch(); 
 } 

/**
 * @param
 * @return
 */
function getProjectCollaborators($projectId)
{
    global $conn;
    $statement = $conn->prepare('SELECT authenticated_user.name, authenticated_user.username, authenticated_user.picture, 
                                authenticated_user.email, project_user_role.role, authenticated_user.id FROM authenticated_user INNER JOIN project_user_role 
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

function getProjectStatistics($projectId)
{
  global $conn;
  
  $stats = [];
  
  $statement = $conn->prepare('SELECT count(*) AS num_tasks FROM task INNER JOIN state ON task.state_id = state.id WHERE task.project_id = ? AND state.name = \'Finished\'');
  $statement->execute([$projectId]);
  $stats['num_tasks'] = $statement->fetch()['num_tasks'];
  $statement = $conn->prepare('SELECT count(*) AS num_likes FROM task_like INNER JOIN task ON task_like.task_id = task.id WHERE task.project_id = ?');
  $statement->execute([$projectId]);
  $stats['num_likes'] = $statement->fetch()['num_likes'];
  $statement = $conn->prepare('SELECT count(*) AS num_coordinators FROM project_user_role WHERE project_id = ? AND role=\'Coordinator\'');
  $statement->execute([$projectId]);
  $stats['num_coordinators'] = $statement->fetch()['num_coordinators'];
  $statement = $conn->prepare('SELECT count(*) AS num_milestones FROM milestone WHERE project_id = ? AND milestone.end_date < now()');
  $statement->execute([$projectId]);
  $stats['num_milestones'] = $statement->fetch()['num_milestones'];
  $statement = $conn->prepare('SELECT count(*) as num_posts FROM post WHERE project_id = ?');
  $statement->execute([$projectId]);
  $stats['num_posts'] = $statement->fetch()['num_posts'];
  $statement = $conn->prepare('SELECT count(*) AS num_comments FROM comment INNER JOIN post ON comment.post_id = post.id WHERE project_id = ?');
  $statement->execute([$projectId]);
  $stats['num_comments'] = $statement->fetch()['num_comments'];


  return $stats;
}

function getTaskDetails($taskId)
{
  global $conn;
  
  $statement = $conn->prepare('SELECT task.title, task.text, task.effort, task.priority, end_date, likes.num_likes, state.name AS state_name
    FROM task INNER JOIN milestone ON task.milestone_id = milestone.id LEFT JOIN state ON state.id = task.state_id,
    (SELECT count(*) AS num_likes FROM task_like WHERE task_id = ?) AS likes WHERE task.id=?');
  $statement->execute([$taskId,$taskId]);
  return $statement->fetch();
}

function getTaskProjectId($taskId)
{
  global $conn;
  
  $statement = $conn->prepare('SELECT project.id FROM project INNER JOIN task ON project.id = task.project_id WHERE task.id=?');
  $statement->execute([$taskId]);
  return $statement->fetch()['id'];
}

function getTaskAssignees($taskId)
{
  global $conn;
  
  $statement = $conn->prepare('SELECT name, username FROM task_assignee INNER JOIN authenticated_user ON task_assignee.user_id = authenticated_user.id WHERE task_id=?');
  $statement->execute([$taskId]);
  return $statement->fetchAll();
}

function getPostProjectId($postId){
    global $conn;

    $statement = $conn->prepare('SELECT project_id FROM post WHERE post.id=?');
    $statement->execute([$postId]);
    return $statement->fetch()['project_id'];
}

function getMilestoneProjectId($milestoneId){
    global $conn;

    $statement = $conn->prepare('SELECT project_id FROM milestone WHERE milestone.id=?');
    $statement->execute([$milestoneId]);
    return $statement->fetch()['project_id'];
}

function getMilestoneDetails($milestoneId)
{
    global $conn;

    $statement = $conn->prepare('SELECT end_date, begin_date, name FROM milestone WHERE milestone.id=?');
    $statement->execute([$milestoneId]);
    return $statement->fetch();
}
