<?php
include_once "header.php";
?>

<div class="container">
    <div class="row forum">
        <div class="row forum_header">
            <div class="back col-md-1 col-xs-3">
                <a href="project_forum.php" data-toggle="tooltip" title="Back to Project Forum"><i class="fa fa-chevron-left fa-2x" aria-hidden="true"></i></a>
            </div>
            <div class="title col-md-3 col-xs-9">
                <i class="fa fa-comments fa-2x" aria-hidden="true"></i>
                <h2> Project Forum</h2>
            </div>
        </div>

        <div class="row post_header2">
            <div class="post_header">
                <div class="postTitle col-md-12">
                    <h3> Post Title</h3>
                </div>
                <div class="postContent col-md-12">
                    <p style="text-align: justify;"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. </p>
                </div>
                <div class="original_poster col-md-12">
                    <span class="media-meta pull-right">March 12, 2017</span>
                    <img id="user_photo" src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-photo">
                    <a href="profile.php"><h4 class="title"><p>op_username</p></a>
                </div>
                <div class="likes likes_post">
                    <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post" class="btn btn-xs btn-primary"><span class="fa fa-arrow-up"></span></a>
                    <h5>15 likes</h5>
                </div>
            </div>
        </div>

        <div class="row forum_post_table">
            <div class="forum_table col-md-12">
                <table class="table">
                   <tr>
                    <td>
                        <div class="forum_table_cell forum_post_table_cell">
                            <p class="comment" style="text-align: justify;"><p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.</p>
                            <div class="original_poster">
                                <span class="media-meta pull-right">March 12, 2017</span>
                                <img id="user_photo" src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-photo">
                                <a href="profile.php"><h4 class="title"><p>op_username</p></a>
                            </div>
                            <div class="likes">
                                <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post" class="btn btn-xs btn-primary"><span class="fa fa-arrow-up"></span></a>
                                <h5>15 likes</h5>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="forum_table_cell forum_post_table_cell">
                            <p class="comment" style="text-align: justify;"><p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.</p>
                            <div class="original_poster">
                                <span class="media-meta pull-right">March 12, 2017</span>
                                <img id="user_photo" src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-photo">
                                <a href="profile.php"><h4 class="title"><p>op_username</p></a>
                            </div>
                             <div class="likes">
                                <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post" class="btn btn-xs btn-primary"><span class="fa fa-arrow-up"></span></a>
                                <h5>15 likes</h5>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="forum_table_cell forum_post_table_cell">
                            <p class="comment" style="text-align: justify;"><p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.</p>
                            <div class="original_poster">
                                <span class="media-meta pull-right">March 12, 2017</span>
                                <img id="user_photo" src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-photo">
                                <a href="profile.php"><h4 class="title"><p>op_username</p></a>
                            </div>
                             <div class="likes">
                                <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post" class="btn btn-xs btn-primary"><span class="fa fa-arrow-up"></span></a>
                                <h5>15 likes</h5>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="forum_table_cell forum_post_table_cell">
                            <textarea type="comment" class="form-control" id="commentInput" placeholder="Write a comment"></textarea>
                            <div class="col-md-2 col-md-offset-10 col-xs-4">
                                <button id="new_proj_btn" type="button" class="btn btn-default pull-right" data-target="#">Comment</button>
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