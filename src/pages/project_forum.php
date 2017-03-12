<?php
include_once "header.html";
?>

<div class="container">
    <div class="row forum">
        <div class="row forum_header">
            <div class="back col-md-1 col-xs-3">
                <a href="project_dashboard.php" data-toggle="tooltip" title="Back to Project Dashboard"><i class="fa fa-chevron-left fa-2x" aria-hidden="true"></i></a>
            </div>
            <div class="title col-md-3 col-xs-9">
                <i class="fa fa-comments fa-2x" aria-hidden="true"></i>
                <h2> Project Forum</h2>
            </div>
            <div class="col-md-6 col-xs-8">
                <div class="input-group search-input-group">
                    <input type="text" class="form-control"  placeholder="Search Post" >
                    <span class="input-group-addon">
                        <button type="submit">
                            <span><i class="fa fa-search" aria-hidden="true"></i></span>
                        </button>  
                    </span>
                </div>
            </div>
            <div class="col-md-2 col-xs-4">
                <a href="create_post.php"><button id="new_post_btn" type="button" class="btn btn-default pull-right">Create Post</button></a>
            </div>
        </div>

        <div class="row">
            <div class="forum_table col-md-12">
                <table class="table">
                   <tr>
                    <td>
                        <div class="forum_table_cell">
                            <span class="media-meta pull-right">March 12, 2017</span>
                            <a href="#"><h4 class="title">
                                Lorem Impsum
                            </h4></a>
                            <span class="badge badge-default badge-pill pull-right">2</span>
                            <p class="summary">Ut enim ad minim veniam, quis nostrud
                                exercitation...</p>
                            <div class="original_poster">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <p>op_username</p>
                            </div>
                            </div>
                        </td>
                    </tr>
                       <tr>
                    <td>
                        <div class="forum_table_cell">
                            <span class="media-meta pull-right">March 12, 2017</span>
                            <a href="#"><h4 class="title">
                                Lorem Impsum
                            </h4></a>
                            <span class="badge badge-default badge-pill pull-right">2</span>
                            <p class="summary">Ut enim ad minim veniam, quis nostrud
                                exercitation...</p>
                            <div class="original_poster">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <p>op_username</p>
                            </div>
                            </div>
                        </td>
                    </tr>
                       <tr>
                    <td>
                        <div class="forum_table_cell">
                            <span class="media-meta pull-right">March 12, 2017</span>
                            <a href="#"><h4 class="title">
                                Lorem Impsum
                            </h4></a>
                            <span class="badge badge-default badge-pill pull-right">2</span>
                            <p class="summary">Ut enim ad minim veniam, quis nostrud
                                exercitation...</p>
                            <div class="original_poster">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <p>op_username</p>
                            </div>
                            </div>
                        </td>
                    </tr>
                       <tr>
                    <td>
                        <div class="forum_table_cell">
                            <span class="media-meta pull-right">March 12, 2017</span>
                            <a href="#"><h4 class="title">
                                Lorem Impsum
                            </h4></a>
                            <span class="badge badge-default badge-pill pull-right">2</span>
                            <p class="summary">Ut enim ad minim veniam, quis nostrud
                                exercitation...</p>
                            <div class="original_poster">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <p>op_username</p>
                            </div>
                            </div>
                        </td>
                    </tr>
                       <tr>
                    <td>
                        <div class="forum_table_cell">
                            <span class="media-meta pull-right">March 12, 2017</span>
                            <a href="#"><h4 class="title">
                                Lorem Impsum
                            </h4></a>
                            <span class="badge badge-default badge-pill pull-right">2</span>
                            <p class="summary">Ut enim ad minim veniam, quis nostrud
                                exercitation...</p>
                            <div class="original_poster">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <p>op_username</p>
                            </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</div>

<?php
include_once "footer.html";
?>