<div class="container">
    <div class="row project">
        <div class="col-md-3 hidden-xs hidden-sm">

            {include file='project_sidebar.tpl'}

            <div class="col-md-9">
                <!--overview tab-->
                <div class="project-content">

                    <div class="row">
                        <div class="tasks_title col-md-8 col-md-offset-1">
                            <i id="graph_chart" class="fa fa-tasks fa-2x" aria-hidden="true"></i>
                            <h3>{$task.title}</h3>
                            <span class="deadline pull-right"><small>Deadline: </small><b>{$task.end_date}</b> </span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <p align="justify">{$task.text}</p>
                        </div>
                    </div>
                    <div class="row taskSmallInfo">
                        <div class="col-md-4 priority">
                            <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                            <h5><b>Priority: </b></h5>
                            <h5>{$task.priority}</h5>
                        </div>
                        <div class="col-md-4 effort">
                            <i class="fa fa-wrench" aria-hidden="true"></i>
                            <h5><b>Effort: </b></h5>
                            <h5>{$task.effort}<b>/10</b></h5>
                        </div>
                        <div class="col-md-4 likes">
                            <a id="like_btn" href="#" data-toggle="tooltip" title="Like Post"
                            class="btn btn-xs btn-primary" style="font-size: 15px"><span
                            class="fa fa-arrow-up"></span></a>
                            <h5 style="font-size: 15px">{$task.num_likes} likes</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <div class="table-container">
                                <table class="table table-filter col-md-offset-1">
                                    <tr>
                                        <th>Assignees</th>
                                    </tr>
                                    {foreach from=$assignees  item=assignee}
                                    <tr>
                                        <td>{$assignee.name} ({$assignee.username})</td>
                                    </tr>
                                    {/foreach}
                                </table>
                            </div>
                        </div>
                        <div class="col-md-5 col-md-offset-1">
                            <button type="button" id="new_proj_btn" class="btn btn-primary col-md-5">Assign to me
                            </button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-1">
                            <button id="new_proj_btn" type="button"
                            class="btn btn-default" data-toggle="collapse"
                            data-target="#commentInput00" style="margin-bottom:0.2em;">Comment Task
                        </button>
                    </div>
                    <div id="commentInput00" class="collapse row">
                        <div class="col-md-10 col-md-offset-1">
                            <textarea type="comment" class="form-control"
                            placeholder="Write a comment"></textarea>
                            <button id="new_proj_btn" type="button" class="btn btn-default"
                            data-target="#">Save Comment</button>
                        </div>
                    </div>
                </div>


                <div class="row comments_box">
                    <div class="comments col-md-12">
                        <div class="media">
                            <div class="media-left">
                                <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png"
                                class="media-object align-self-center" style="width:2.5em">
                            </div>
                            <div class="media-body">
                                <div class="original_poster">
                                    <a href="profile.php">
                                        <h4 class="title"><p>op_username</p></h4>
                                    </a>
                                </div>
                                <p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing
                                    elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
                                    Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>
                                    <div class="comment_footer">
                                        <button id="new_proj_btn" type="button"
                                        class="btn btn-default btn-xs" data-toggle="collapse"
                                        data-target="#commentInput29">Comment
                                    </button>
                                </div>
                                <div id="commentInput29" class="collapse row">
                                    <div class="col-md-12">
                                        <textarea type="comment" class="form-control"
                                        placeholder="Write a comment"></textarea>
                                        <button id="new_proj_btn" type="button" class="btn btn-default btn-xs"
                                        data-target="#">Save Comment</button>
                                    </div>
                                </div>

                                <!--nested comment -->
                                <div class="media">
                                    <div class="media-left">
                                        <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png"
                                        class="media-object align-self-center" style="width:2.5em">
                                    </div>
                                    <div class="media-body">
                                        <div class="original_poster">
                                            <a href="profile.php">
                                                <h4 class="title"><p>op_username</p></h4>
                                            </a>
                                        </div>
                                        <p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing
                                            elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
                                            Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>
                                            <div class="comment_footer">
                                                <button id="new_proj_btn" type="button"
                                                class="btn btn-default btn-xs" data-toggle="collapse"
                                                data-target="#commentInput111">Comment
                                            </button>
                                        </div>
                                        <div id="commentInput111" class="collapse row">
                                            <div class="col-md-12">
                                                <textarea type="comment" class="form-control"
                                                placeholder="Write a comment"></textarea>
                                                <button id="new_proj_btn" type="button" class="btn btn-default btn-xs"
                                                data-target="#">Save Comment</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-left">
                                <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png"
                                class="media-object align-self-center" style="width:2.5em">
                            </div>
                            <div class="media-body">
                                <div class="original_poster">
                                    <a href="profile.php">
                                        <h4 class="title"><p>op_username</p></h4>
                                    </a>
                                </div>
                                <p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing
                                    elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
                                    Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.</p>
                                    <div class="comment_footer">
                                        <button id="new_proj_btn" type="button"
                                        class="btn btn-default btn-xs" data-toggle="collapse"
                                        data-target="#commentInput145">Comment
                                    </button>
                                </div>
                                <div id="commentInput145" class="collapse row">
                                    <div class="col-md-12">
                                        <textarea type="comment" class="form-control"
                                        placeholder="Write a comment"></textarea>
                                        <button id="new_proj_btn" type="button" class="btn btn-default btn-xs"
                                        data-target="#">Save Comment</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class ="row">
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
