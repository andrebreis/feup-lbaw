<script>
    $(function () {
        $('.like').click(function () {
            likeFunction(this);
        });
    });

    function likeFunction(caller) {
        var postId = caller.parentElement.getAttribute('postid');
        $.ajax({
            type: "POST",
            url: "rate.php",
            data: 'Action=LIKE&PostID=' + postId,
            success: function () {}
        });
    }
</script>

<div class="modal fade" id="createPostModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="createPostModalContent">
            <div class="modal-header">
                <h3 class="modal-title" id="createPostModalTitle">New Post</h3>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="postTitle">Post Title</label>
                        <input type="title" class="form-control" id="postTitleInput"
                               placeholder="Choose a title for your Post">
                    </div>
                    <div class="form-group">
                        <label for="postContent">Post Content</label>
                        <input type="description" class="form-control" id="postContentInput"
                               placeholder="Write your post here">
                    </div>
                </form>
            </div>
            <div class="row">
                <div class="modal-footer col-md-4 col-md-offset-4">
                    <button type="button" id="proj_btn" class="btn btn-primary create_in_modal">Create Post</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row project">
        <div class="col-md-3 hidden-xs hidden-sm">

            {include file='project_sidebar.tpl'}

            <div class="col-md-9">
                <!--overview tab-->
                <div class="project-content">
                    <div class="row forum_header">
                        <div class="title col-md-4 col-md-offset-1">
                            <i id="graph_chart" class="fa fa-comments fa-2x" aria-hidden="true"></i>
                            <h3> Project Forum</h3>
                        </div>
                        <div class="col-md-4 col-xs-7 ">
                            <div class="input-group search-input-group">
                                <input type="text" class="form-control" placeholder="Search Post...">
                                <span class="input-group-addon">
                                <button type="submit">
                                    <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                </button>
                            </span>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <button id="new_post_btn" type="button" class="btn btn-default newPost" data-toggle="modal"
                                    data-target="#createPostModal">Create Post
                            </button>
                        </div>
                    </div>

                    <div class="row">
                        <div class="forum_table col-md-12">
                            <table class="table">
                                {foreach from=$posts  item=post}
                                    <tr>
                                        <td>
                                            <div class="forum_table_cell">
                                                <span class="media-meta pull-right">March 12, 2017</span>
                                                <a href="index.php?page=forum_post.php&projectid={$smarty.get.id}&"><h4
                                                            class="title">
                                                        {$post.title}
                                                    </h4></a>
                                                <p class="summary">{$post.text} </p>
                                                </p>
                                                <span class="badge badge-default badge-pill pull-right">2</span>
                                                <div class="original_poster">
                                                    <img id="user_photo"
                                                         src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png"
                                                         class="media-photo">
                                                    <a href="profile.php">
                                                        <h4 class="title"><p>{$post.creator_name}</p>
                                                    </a>
                                                </div>
                                                <div class="likes">
                                                    <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post"
                                                       class="btn btn-xs btn-primary"><span
                                                                class="fa fa-arrow-up"></span></a>
                                                    <h5>{$post.num_likes} likes</h5>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                {/foreach}
                                <!--<tr>
                                    <td>
                                        <div class="forum_table_cell">
                                            <span class="media-meta pull-right">March 12, 2017</span>
                                            <a href="forum_post.php"><h4 class="title">
                                                    Lorem Impsum
                                                </h4></a>
                                            <p class="summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed
                                                nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.
                                                Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa.
                                                Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad
                                                litora torquent per conubia nostra, per inceptos himenaeos. Curabitur
                                                sodales ligula in libero. Sed dignissim lacinia nunc. </p>
                                            </p>
                                            <span class="badge badge-default badge-pill pull-right">2</span>
                                            <div class="original_poster">
                                                <img id="user_photo"
                                                     src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png"
                                                     class="media-photo">
                                                <a href="profile.php">
                                                    <h4 class="title"><p>op_username</p>
                                                </a>
                                            </div>
                                            <div class="likes">
                                                <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post"
                                                   class="btn btn-xs btn-primary"><span
                                                            class="fa fa-arrow-up"></span></a>
                                                <h5>15 likes</h5>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="forum_table_cell">
                                            <span class="media-meta pull-right">March 12, 2017</span>
                                            <a href="forum_post.php"><h4 class="title">
                                                    Lorem Impsum
                                                </h4></a>
                                            <p class="summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed
                                                nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.
                                                Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa.
                                                Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad
                                                litora torquent per conubia nostra, per inceptos himenaeos. Curabitur
                                                sodales ligula in libero. Sed dignissim lacinia nunc. </p>
                                            </p>
                                            <span class="badge badge-default badge-pill pull-right">2</span>
                                            <div class="original_poster">
                                                <img id="user_photo"
                                                     src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png"
                                                     class="media-photo">
                                                <a href="profile.php">
                                                    <h4 class="title"><p>op_username</p>
                                                </a>
                                            </div>
                                            <div class="likes">
                                                <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post"
                                                   class="btn btn-xs btn-primary"><span
                                                            class="fa fa-arrow-up"></span></a>
                                                <h5>15 likes</h5>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="forum_table_cell">
                                            <span class="media-meta pull-right">March 12, 2017</span>
                                            <a href="forum_post.php"><h4 class="title">
                                                    Lorem Impsum
                                                </h4></a>
                                            <p class="summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed
                                                nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.
                                                Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa.
                                                Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad
                                                litora torquent per conubia nostra, per inceptos himenaeos. Curabitur
                                                sodales ligula in libero. Sed dignissim lacinia nunc. </p>
                                            </p>
                                            <span class="badge badge-default badge-pill pull-right">2</span>
                                            <div class="original_poster">
                                                <img id="user_photo"
                                                     src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png"
                                                     class="media-photo">
                                                <a href="profile.php">
                                                    <h4 class="title"><p>op_username</p>
                                                </a>
                                            </div>
                                            <div class="likes">
                                                <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post"
                                                   class="btn btn-xs btn-primary"><span
                                                            class="fa fa-arrow-up"></span></a>
                                                <h5>15 likes</h5>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="forum_table_cell">
                                            <span class="media-meta pull-right">March 12, 2017</span>
                                            <a href="forum_post.php"><h4 class="title">
                                                    Lorem Impsum
                                                </h4></a>
                                            <p class="summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed
                                                nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.
                                                Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa.
                                                Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad
                                                litora torquent per conubia nostra, per inceptos himenaeos. Curabitur
                                                sodales ligula in libero. Sed dignissim lacinia nunc. </p>
                                            </p>
                                            <span class="badge badge-default badge-pill pull-right">2</span>
                                            <div class="original_poster">
                                                <img id="user_photo"
                                                     src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png"
                                                     class="media-photo">
                                                <a href="profile.php">
                                                    <h4 class="title"><p>op_username</p>
                                                </a>
                                            </div>
                                            <div class="likes">
                                                <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post"
                                                   class="btn btn-xs btn-primary"><span
                                                            class="fa fa-arrow-up"></span></a>
                                                <h5>15 likes</h5>
                                            </div>
                                        </div>
                                    </td>
                                </tr> -->
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
