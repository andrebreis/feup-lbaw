<div class="container">
   <div class="row project">
       <div class="col-md-3 hidden-xs hidden-sm">

        {include file='project_sidebar.tpl'}

        <div class="col-md-9">
            <!--overview tab-->
            <div class="project-content">
                <div class="row forum_header">
                    <div class="title col-md-4 col-md-offset-1">
                        <i class="fa fa-comments fa-2x" aria-hidden="true"></i>
                        <h3> Project Forum</h3>
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
                        <div class="original_poster col-md-5">
                            <img id="user_photo" src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-photo">
                            <a href="profile.php"><h4 class="title"><p>op_username</p></h4></a>
                            <h4 class="comment_date"><small><i> on February 19, 2016</i></small></h4>
                        </div>
                        <div class="likes likes_post col-md-2 col-md-offset-5">
                            <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post" class="btn btn-xs btn-primary"><span class="fa fa-arrow-up"></span></a>
                            <h5>15 likes</h5>
                        </div>
                        <button id="new_proj_btn" type="button" class="btn btn-default btn-xs pull-right" data-toggle="collapse" data-target="#commentInput99">Comment</button>
                        <div id="commentInput99" class="collapse">
                            <textarea type="comment" class="form-control" placeholder="Write a comment"></textarea>
                            <button id="new_proj_btn" type="button" class="btn btn-default btn-xs" data-target="#">Save Comment</button>
                        </div>
                    </div>
                </div>

                <div class="row comments_box">
                    <div class="comments col-md-12">
                        <div class="media">
                            <div class="media-left">
                                <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-object align-self-center" style="width:2.5em">
                            </div>
                            <div class="media-body">
                                <div class="original_poster">
                                    <a href="profile.php"><h4 class="title"><p>op_username</p></h4></a>
                                    <h4 class="comment_date"><small><i> on February 19, 2016</i></small></h4>
                                </div>
                                <p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>
                                <div class="comment_footer">
                                    <div class="likes">
                                        <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post" class="btn btn-xs btn-primary"><span class="fa fa-arrow-up"></span></a>
                                        <h5>15 likes</h5>
                                    </div>
                                    <button id="new_proj_btn" type="button" class="btn btn-default btn-xs pull-right" data-toggle="collapse" data-target="#commentInput">Comment</button>
                                </div>
                                <div id="commentInput" class="collapse">
                                    <textarea type="comment" class="form-control" placeholder="Write a comment"></textarea>
                                    <button id="new_proj_btn" type="button" class="btn btn-default btn-xs" data-target="#">Save Comment</button>
                                </div>

                                <!--nested comment-->
                                <div class="media">
                                    <div class="media-left">
                                        <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-object align-self-center" style="width:2.5em">
                                    </div>
                                    <div class="media-body">
                                        <div class="original_poster">
                                            <a href="profile.php"><h4 class="title"><p>op_username</p></h4></a>
                                            <h4 class="comment_date"><small><i> on February 19, 2016</i></small></h4>
                                        </div>
                                        <p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>
                                        <div class="comment_footer">
                                            <div class="likes">
                                                <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post" class="btn btn-xs btn-primary"><span class="fa fa-arrow-up"></span></a>
                                                <h5>15 likes</h5>
                                            </div>
                                            <button id="new_proj_btn" type="button" class="btn btn-default btn-xs pull-right" data-toggle="collapse" data-target="#commentInput3">Comment</button>
                                        </div>
                                        <div id="commentInput3" class="collapse">
                                            <textarea type="comment" class="form-control" placeholder="Write a comment"></textarea>
                                            <button id="new_proj_btn" type="button" class="btn btn-default btn-xs" data-target="#">Save Comment</button>
                                        </div>

                                        <!--nested comment inside nested comment-->
                                        <div class="media">
                                            <div class="media-left">
                                                <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-object align-self-center" style="width:2.5em">
                                            </div>
                                            <div class="media-body">
                                                <div class="original_poster">
                                                    <a href="profile.php"><h4 class="title"><p>op_username</p></h4></a>
                                                    <h4 class="comment_date"><small><i> on February 19, 2016</i></small></h4>
                                                </div>
                                                <p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>
                                                <div class="comment_footer">
                                                    <div class="likes">
                                                        <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post" class="btn btn-xs btn-primary"><span class="fa fa-arrow-up"></span></a>
                                                        <h5>15 likes</h5>
                                                    </div>
                                                    <button id="new_proj_btn" type="button" class="btn btn-default btn-xs pull-right" data-toggle="collapse" data-target="#commentInput2">Comment</button>
                                                </div>
                                                <div id="commentInput2" class="collapse">
                                                    <textarea type="comment" class="form-control" placeholder="Write a comment"></textarea>
                                                    <button id="new_proj_btn" type="button" class="btn btn-default btn-xs" data-target="#">Save Comment</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="media">
                            <div class="media-left">
                                <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-object align-self-center" style="width:2.5em">
                            </div>
                            <div class="media-body">
                                <div class="original_poster">
                                    <a href="profile.php"><h4 class="title"><p>op_username</p></h4></a>
                                    <h4 class="comment_date"><small><i> on February 19, 2016</i></small></h4>
                                </div>
                                <p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>
                                <div class="comment_footer">
                                    <div class="likes">
                                        <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post" class="btn btn-xs btn-primary"><span class="fa fa-arrow-up"></span></a>
                                        <h5>15 likes</h5>
                                    </div>
                                    <button id="new_proj_btn" type="button" class="btn btn-default btn-xs pull-right" data-toggle="collapse" data-target="#commentInput1">Comment</button>
                                </div>
                                <div id="commentInput1" class="collapse">
                                    <textarea type="comment" class="form-control" placeholder="Write a comment"></textarea>
                                    <button id="new_proj_btn" type="button" class="btn btn-default btn-xs" data-target="#">Save Comment</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>
</div>
