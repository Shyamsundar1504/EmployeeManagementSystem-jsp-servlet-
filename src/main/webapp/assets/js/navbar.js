window.onload = function() {
    // Check if the session is null
    var sessionName = '<%= session.getAttribute("name") %>';
    var navbar = document.querySelector('.navbar');

    if (sessionName === 'null' || sessionName === '') {
        // If session is null, set navbar background to transparent
        navbar.style.backgroundColor = 'transparent';
    } else {
        // If session is not null, set navbar background to red
        navbar.style.backgroundColor = '#9966ff';
    }
};