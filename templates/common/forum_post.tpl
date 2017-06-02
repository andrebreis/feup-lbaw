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
                                <h3>{$post.title}</h3>
                            </div>
                            <div class="postContent col-md-12">
                                <p style="text-align: justify;">{$post.text}</p>
                            </div>
                            <div class="original_poster col-md-5">
                                <img id="user_photo"
                                     src="../../images/assets/default.png"
                                     class="media-photo">
                                <a href="index.php?page=profile.php&id={$post.creator_id}">
                                    <h4 class="title"><p>{$post.creator_name}</p></h4>
                                </a>
                            </div>
                            <div class="likes likes_post col-md-2 col-md-offset-5">
                                <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post"
                                   class="btn btn-xs btn-primary"><span class="fa fa-arrow-up"></span></a>
                                <h5>{$post.likes} likes</h5>
                            </div>
                            <button id="new_proj_btn" type="button" class="btn btn-default btn-xs pull-right"
                                    data-toggle="collapse" data-target="#commentInput99">Comment
                            </button>
                            <div id="commentInput99" class="collapse">
                                <textarea type="comment" class="form-control" placeholder="Write a comment"></textarea>
                                <button id="new_proj_btn" type="button" class="btn btn-default btn-xs" data-target="#">
                                    Save Comment
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="row comments_box">
                        <div class="comments col-md-12">
                            <div class="media">
                                <div class="media-left">
                                    <img src="../../images/assets/default.png"
                                         class="media-object align-self-center" style="width:2.5em">
                                </div>
                                <div class="media-body">
                                    <div class="original_poster">
                                        <a href="profile.php">
                                            <h4 class="title"><p>André Reis</p></h4>
                                        </a>
                                    </div>
                                    <p style="text-align: justify;">Claro que sim!!!</p>
                                    <div class="comment_footer">
                                        <button id="new_proj_btn" type="button"
                                                class="btn btn-default btn-xs" data-toggle="collapse"
                                                data-target="#commentInput11">Comment
                                        </button>
                                    </div>
                                    <div id="commentInput11" class="collapse row">
                                        <div class="col-md-12">
                                        <textarea type="comment" class="form-control"
                                                  placeholder="Write a comment"></textarea>
                                            <button id="new_proj_btn" type="button" class="btn btn-default btn-xs"
                                                    data-target="#">Save Comment
                                            </button>
                                        </div>
                                    </div>

                                    <!--nested comment -->
                                    <div class="media">
                                        <div class="media-left">
                                            <img src="../../images/assets/default.png"
                                                 class="media-object align-self-center" style="width:2.5em">
                                        </div>
                                        <div class="media-body">
                                            <div class="original_poster">
                                                <a href="profile.php">
                                                    <h4 class="title"><p>Francisca Paupério</p></h4>
                                                </a>
                                            </div>
                                            <p style="text-align: justify;">Boa! Estás a trabalhar muito bem, continua assim! Tenho a certeza que vais longe!</p>
                                            <div class="comment_footer">
                                                <button id="new_proj_btn" type="button"
                                                        class="btn btn-default btn-xs" data-toggle="collapse"
                                                        data-target="#commentInput28">Comment
                                                </button>
                                            </div>
                                            <div id="commentInput28" class="collapse row">
                                                <div class="col-md-12">
                                                <textarea type="comment" class="form-control"
                                                          placeholder="Write a comment"></textarea>
                                                    <button id="new_proj_btn" type="button"
                                                            class="btn btn-default btn-xs"
                                                            data-target="#">Save Comment
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-left">
                                    <img src="../../images/assets/default.png"
                                         class="media-object align-self-center" style="width:2.5em">
                                </div>
                                <div class="media-body">
                                    <div class="original_poster">
                                        <a href="profile.php">
                                            <h4 class="title"><p>André Reis</p></h4>
                                        </a>
                                    </div>
                                    <p style="text-align: justify;">Obrigado, espero que sim! Esforço-me por isso! Se precisares de mais alguma coisa diz!</p>
                                    <div class="comment_footer">
                                        <button id="new_proj_btn" type="button"
                                                class="btn btn-default btn-xs" data-toggle="collapse"
                                                data-target="#commentInput26">Comment
                                        </button>
                                    </div>
                                    <div id="commentInput26" class="collapse row">
                                        <div class="col-md-12">
                                        <textarea type="comment" class="form-control"
                                                  placeholder="Write a comment"></textarea>
                                            <button id="new_proj_btn" type="button" class="btn btn-default btn-xs"
                                                    data-target="#">Save Comment
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-1">
                            <button id="icon_btn" onclick="window.history.go(-1);"
                                    class="btn btn-arrow btn-sm fa fa-arrow-left" type="submit"></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

