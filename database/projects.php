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
