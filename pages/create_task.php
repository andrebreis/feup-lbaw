<?php
include_once "header.php";
?>

<style>
.wrapper {
     margin: 6em 0 2em 0;
}

</style>

<div class="wrapper col-md-8">
  <form>
    <div class="form-group">
      <label for="topic">Topic:</label>
      <input type="text" class="form-control" name="topic" placeholder="Enter your task topic here...">
    </div>
    <div class="form-group">
      <label for="text">Text:</label>
      <textarea type="text" class="form-control" rows="12" name="text" placeholder="Enter the detailed task description here..."></textarea>
    </div>

    <div class="form-group">
      <label for="assignees">Assignee(s):</label>
      <select class="form-control" multiple>
        <option>andré</option>
        <option>francisca</option>
        <option>filipa</option>
        <option>josé</option>
      </select>
    </div>

    <div class="form-group">
      <label for="label">Label</label>
      <input type="text" class="form-control" name="label" placeholder="Write your label here">
    </div>

    <div class="form-group">
      <label for="milestone">Milestone</label>
      <input type="text" class="form-control" name="label" placeholder="Write the milestone name here">
    </div>


    <div class="form-group">
       <div class="col-md-offset-11 col-md-2">
         <button type="submit" class="btn btn-default">Submit</button>
       </div>
    </div>
</div>

<?php
include_once "footer.html";
?>
