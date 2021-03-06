var socket;

$(document).ready(function () {
    // Create a socket
    socket = new WebSocket('ws://' + window.location.host + '/topic/join/ws/chat?uname=' + 
    $('#uname').text() + '&tid=' + $('#tid').text());
    // Message received on the socket0
    socket.onmessage = function (event) {
        var data = JSON.parse(event.data);
        console.log(data);
        switch (data.Type) {
        case 0: // JOIN
            if (data.User == $('#uname').text()) {
                $("#chatbox li").first().before("<li>你加入了聊天室.</li>");
            } else {
                $("#chatbox li").first().before("<li>" + data.User + " 加入了聊天室.</li>");
            }
            break;
        case 1: // LEAVE
            $("#chatbox li").first().before("<li>" + data.User + " 离开了聊天室.</li>");
            break;
        case 2: // MESSAGE
            $("#chatbox li").first().before("<li><b>" + data.User + "</b>: " + data.Content + "</li>");
            break;
        }
    };

    // Send messages.
    var postConecnt = function () {
        var uname = $('#uname').text();
        var content = $('#sendbox').val();
        socket.send(content);
        $('#sendbox').val("");
    }

    $('#sendbtn').click(function () {
        postConecnt();
    });
});