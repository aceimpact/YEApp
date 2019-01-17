$(".icon").click(function() {
  window.open(url, ‘’, ‘width=580,height=400,menubar=no,toolbar=no,scrollbars=yes’);
});

var openShareWindow = function(url) {
 window.open(url, ‘’, ‘width=580,height=400,menubar=no,toolbar=no,scrollbars=yes’);
};

var targetUrl = location.href;

var facebookShareUrl = `https://www.facebook.com/share.php?u=${targetUrl}`;
var twitterShareUrl = `https://twitter.com/share?url=${targetUrl}`;

var openShareWindow = function(url) {
 window.open(url, ‘’, ‘width=580,height=400,menubar=no,toolbar=no,scrollbars=yes’);
};
