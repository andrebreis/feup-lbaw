<!-- create project modal-->
<div class="modal fade" id="addCollaboratorModal" tabindex="-1" role="dialog"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="addCollaboratorModalContent">
            <div class="modal-header">
                <h3 class="modal-title" id="addCollaboratorModalTitle">Add Collaborator</h3>
            </div>
            <div class="modal-body">
                <form>
                    <label for="projectTags">New Collaborator</label>
                    <!-- TODO: CHANGE THIS TO usernames -->
                    <div id="the-basics">
                        <input class="typeahead form-control" type="text" placeholder="Enter a username">
                        </small>
                    </div>
                </form>
            </div>
            <div class="row">
                <div class="modal-footer col-md-4 col-md-offset-4">
                    <button type="submit" id="new_proj_btn" class="btn btn-primary create_in_modal">Submit
                    </button>
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

                    <div class="row">
                        <div class="collab_title col-md-8 col-md-offset-1">
                            <i id="graph_chart" class="fa fa-users fa-2x" aria-hidden="true"></i>
                            <h3>Collaborators</h3>
                        </div>
                        <form action="../actions/add_collaborator.php" method="post">
                            <div class="col-md-3">
                                <button id="new_proj_btn" type="button" class="btn btn-default"
                                        data-toggle="modal" data-target="#addCollaboratorModal">Add Collaborator
                                </button>
                            </div>
                        </form>
                    </div>

                    <!--list of coordinators-->
                    {foreach from=$collaborators  item=collaborator}
                        <div class="proj_user col-md-6 col-md-offset-1">
                            <a id="href" href="index.php?page=profile.php&id={$collaborator.id}" class="pull-left">
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
                            <h5><a href="index.php?page=profile.php&id={$collaborator.id}">({$collaborator.username}
                                    )</a></h5>
                            <div class="info">
                                <div class="email">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <p>{$collaborator.email}</p>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
