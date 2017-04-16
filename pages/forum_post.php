<?php
include_once "header.html";
?>

<div class="modal fade" id="createPostModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="createPostModalContent">
            <div class="modal-header">
                <h3 class="modal-title" id="createPostModalTitle">New Post</h3>
            </div>
            <div class="modal-body">
             <form>
                 <div class="form-group">
                    <label for="postTitle">Post Title</label>
                    <input type="title" class="form-control" id="postTitleInput" placeholder="Choose a title for your Post">
                </div>
                <div class="form-group">
                    <label for="postContent">Post Content</label>
                    <input type="description" class="form-control" id="postContentInput" placeholder="Write your post here">
                </div>
            </form>
        </div>
        <div class="row">
            <div class="modal-footer col-md-4 col-md-offset-4">
                <button type="button" id="new_proj_btn" class="btn btn-primary create_in_modal">Create Post</button>
            </div>
        </div>
    </div>
</div> 
</div>

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
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <a href="profile.php"><h4 class="title"><p>op_username</p></a>
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
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <a href="profile.php"><h4 class="title"><p>op_username</p></a>
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
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <a href="profile.php"><h4 class="title"><p>op_username</p></a>
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
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <a href="profile.php"><h4 class="title"><p>op_username</p></a>
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