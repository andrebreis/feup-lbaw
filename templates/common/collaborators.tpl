  <!--<script>
  $(document).ready(function(){
    $('input').tagsinput({
      maxTags: 2
  });
});
</script>-->

<!--to-do: change citynames to usernames) -->
  <script>
  $(document).ready(function() {
      var substringMatcher = function(strs) {
          return function findMatches(q, cb) {
            var matches, substrRegex;

    // an array that will be populated with substring matches
    matches = [];

    // regex used to determine if a string contains the substring `q`
    substrRegex = new RegExp(q, 'i');

    // iterate through the pool of strings and for any string that
    // contains the substring `q`, add it to the `matches` array
    $.each(strs, function(i, str) {
      if (substrRegex.test(str)) {
        matches.push(str);
    }
});

    cb(matches);
};
};

//todo- change this to usernames
var states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California',
'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii',
'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota',
'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota',
'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island',
'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont',
'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'
];

$('#the-basics .typeahead').typeahead({
  hint: true,
  highlight: true,
  minLength: 1
},
{
  name: 'states',
  source: substringMatcher(states)
});
});
  </script>


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
        <button type="submit" id="new_proj_btn" class="btn btn-primary create_in_modal">Create Project
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
                        <div class="col-md-3">
                            <button id="new_proj_btn" type="button" class="btn btn-default"
                            data-toggle="modal" data-target="#addCollaboratorModal">Add Collaborator
                        </button>
                    </div>
                </div>

                    <!--list of coordinators-->
                    {foreach from=$collaborators  item=collaborator}
                        <div class="proj_user col-md-4 col-md-offset-1">
                            <a id="href" href="index.php?page=profile.php&id={$collaborator.id}" class="pull-left">
                                <img src="{$collaborator.picture}"
                                     class="media-photo">
                            </a>
                            <h4 class="title">
                                {$collaborator.name}
                                {if $collaborator.role=="Coordinator"}
                                    <span class="coordinator pull-right">{$collaborator.role}</span>
                                    <span class="collaborator pull-right">{$collaborator.role}</span>
                                {/if}
                            </h4>
                            <h5><a href="index.php?page=profile.php&id={$collaborator.id}">({$collaborator.username})</a></h5>
                            <div class="info">
                                <div class="email">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <p>{$collaborator.email}</p>
                                </div>
                            </div>
                                {else}
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
