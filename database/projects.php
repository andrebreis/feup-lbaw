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
function createProject($creatorId, $name, $description, $isVisible) {
    global $conn;
    $statement = $conn->prepare('INSERT INTO project (name, description, visible) VALUES(?, ?, ?)');
    $statement->execute([$name, $description, $isVisible == 'true']);
    $projectId = $conn->lastInsertId();

    $statement = $conn->prepare('INSERT INTO project_user_role (project_id, user_id, role) VALUES(?, ?, ?)');
    $statement->execute([$projectId, $creatorId, 'Coordinator']);
    echo $projectId;
    return $statement->errorInfo();
}

/** 
 * Searches all projects given the query sentence
 * @param $query string The search string.
 * @return array All results.
 */
function searchProjects($query) {
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
