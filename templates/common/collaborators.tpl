<div class="container">
    <div class="row project">
        <div class="col-md-3 hidden-xs hidden-sm">

            {include file='project_sidebar.tpl'}

            <div class="col-md-9">
                <!--overview tab-->
                <div class="project-content">

                    <div class="row">
                        <div class="collab_title col-md-8 col-md-offset-1">
                            <i id="graph_chart" class="fa fa-users fa-2x" aria-hidden="true"></i>
                            <h3>Collaborators</h3>
                        </div>
                        <div class="col-md-3">
                            <button id="proj_btn" type="button" class="btn btn-default">Add Collaborator</button>
                        </div>
                    </div>

                    <!--list of coordinators-->
                    {foreach from=$collaborators  item=collaborator}
                        <div class="proj_user col-md-4 col-md-offset-1">
                            <a href="profile.php" class="pull-left">
                                <img src="{$collaborator.picture}"
                                     class="media-photo">
                            </a>
                            <h4 class="title">
                                {$collaborator.name}
                                {if $collaborator.role=="Coordinator"}
                                    <span class="coordinator pull-right">{$collaborator.role}</span>
                                {else}
                                    <span class="collaborator pull-right">{$collaborator.role}</span>
                                {/if}
                            </h4>
                            <h5>({$collaborator.username})</h5>
                            <div class="info">
                                <div class="email">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <p>{$collaborator.email}</p>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                    <!--<div class="row">
                        <div class="proj_user col-md-5 col-md-offset-1">
                            <a href="profile.php" class="pull-left">
                                <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png"
                                     class="media-photo">
                            </a>
                            <h4 class="title">
                                Harold Johnson
                                <span class="collaborator pull-right">Collaborator</span>
                            </h4>
                            <h5>(HTPharold)</h5>
                            <div class="info">
                                <div class="location">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <p>Lansing, United States</p>
                                </div>
                                <div class="email">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <p>haroldme@hotmail.com</p>
                                </div>
                            </div>
                        </div>
                        <div class="proj_user col-md-5">
                            <a href="profile.php" class="pull-left">
                                <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png"
                                     class="media-photo">
                            </a>
                            <h4 class="title">
                                Harold Johnson
                                <span class="collaborator pull-right">Collaborator</span>
                            </h4>
                            <h5>(HTPharold)</h5>
                            <div class="info">
                                <div class="location">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <p>Lansing, United States</p>
                                </div>
                                <div class="email">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <p>haroldme@hotmail.com</p>
                                </div>
                            </div>
                        </div>
                    </div>-->
                    <!--end of list of coordinators-->

                </div>
            </div>
        </div>
    </div>
