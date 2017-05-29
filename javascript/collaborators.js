$(document).ready(function () {
    var substringMatcher = function (strs) {
        return function findMatches(q, cb) {
            var matches, substrRegex;

            // an array that will be populated with substring matches
            matches = [];

            // regex used to determine if a string contains the substring `q`
            substrRegex = new RegExp(q, 'i');

            // iterate through the pool of strings and for any string that
            // contains the substring `q`, add it to the `matches` array
            $.each(strs, function (i, str) {
                if (substrRegex.test(str)) {
                    matches.push(str);
                }
            });

            cb(matches);
        };
    }

    console.log('sending ajax...')
    $.ajax('../actions/get_users.php', {
        method: 'POST'
    }).done(function (response) {
        var objects = JSON.parse(response);
        var states=[];

        for(var i=0; i<objects.length; i++){
            states.push(objects[i].username);
        }

        console.log('a' + states)
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
});