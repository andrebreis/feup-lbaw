<?php

include_once('../config/init.php');

/** Initializes user session.
 * @param $username string
 */
function initializeSession($username) {
    session_regenerate_id(true);
    $_SESSION['username'] = $username;
    $_SESSION['userId'] = getIdByUsername($username);
    $_SESSION['email'] = getUserField($_SESSION['userId'], 'email');
    $_SESSION['name'] = getUserField($_SESSION['userId'], 'name');
}

/**
 * Check if the $username and the $password match.
 * @param $username string User's chosen name to use as login
 * @param $password string User's password.
 * @return bool Returns true if the $username and $password match.
 */
function verifyLogin($username, $password) {
    global $conn;
    $statement = $conn->prepare('SELECT password FROM authenticated_user WHERE username = ?');
    $statement->execute([$username]);
    $hashed_password = $statement->fetch()['password'];
    return password_verify($password, $hashed_password);
}

/** Tries to log the user in. If successful, set the $_SESSION variable.
 * @param $username string
 * @param $password string
 * @return bool Whether the user has logged in or not.
 */
function login($username, $password) {
    if (verifyLogin($username, $password)) {
        initializeSession($username);
        return true;
    } else
        return false;
}

/** Verifies signup.
 * @param $username string
 * @param $password string
 * @param $password_repeat string
 * @param $email string
 * @param $name string
 * @return array|bool Returns array with error messages or true in case the signup would be successful.
 */
function signupVerify($username, $password, $password_repeat, $email, $name) {
    if (strlen($username) < 4)
        $errors[] = array('error' => 'username', 'message' => 'A username must be least 4 characters long.');
    else if (usernameExists($username))
        $errors[] = array('error' => 'username', 'message' => 'Username already exists.');
    if (strlen($password) < 4)
        $errors[] = array('error' => 'password', 'message' => 'A password must be at least 4 characters long.');
    if ($password !== $password_repeat)
        $errors[] = array('error' => 'password-repeat', 'message' => 'Passwords do not match.');
    if (!filter_var($email))
        $errors[] = array('error' => 'email', 'message' => 'Email is invalid.');
    else if (emailExists($email))
        $errors[] = array('error' => 'email', 'message' => 'Email is already registered.');
    if (!isset($name))
        $errors[] = array('error' => 'name', 'message' => 'A name must be provided.');
    return isset($errors) ? $errors : true;
  }
