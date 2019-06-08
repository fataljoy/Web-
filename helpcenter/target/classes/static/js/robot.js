$(function () {
    var words = $('#words');
    words.html(aTalk('What can I help with you today?'));

    $('#submit').on('click', function () {
        robot(words)
    });
    $('#input').keydown(function (e) {
        var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;
        if (key === 13) {
            robot(words)
        }
    })
});

function robot(words) {
    var input = $('#input');
    var text = input.val();
    if (text === "") {
        speak(words, aTalk('what?'));
    } else {
        speak(words, bTalk(text));
        speak(words, aTalk("I'm a repeater."));
        speak(words, aTalk(text));
    }
    input.val('')
}

function speak(words, str) {
    words.html(words.html() + str)
}

function aTalk(str) {
    return '<div class="atalk"><span>' + str + '</span></div>';
}

function bTalk(str) {
    return '<div class="btalk"><span>' + str + '</span></div>';
}