



function toggleContent() {
    var hiddenContent = document.getElementById("hidden-content");
   var existingContent = document.getElementById("existing-content");  
    // 
    // var hiddenContent2 = document.getElementById("hidden-content2");
        if (hiddenContent.style.display === "none") {
            hiddenContent.style.display = "block";
             existingContent.style.display = "none";
        // } else if(hiddenContent1.style.display === "none") {
        //     hiddenContent1.style.display = "block";
        //     // existingContent.style.display = "none";
        // }else if( hiddenContent2.style.display === "none") {
        //     hiddenContent2.style.display = "block";
            // existingContent.style.display = "none";
        }
        else {
            hiddenContent.style.display = "none";
            existingContent.style.display = "block";
        }
}
function toggleContent1() {
  var hiddenContent1 = document.getElementById("hidden-content1");
    var existingContent = document.getElementById("existing-content");
        if (hiddenContent1.style.display === "none") {
            hiddenContent1.style.display = "block";
            existingContent.style.display = "none";
        } else {
            hiddenContent1.style.display = "none";
            existingContent.style.display = "block";
        }
}
function toggleContent2() {
    var hiddenContent2 = document.getElementById("hidden-content2");
      var existingContent = document.getElementById("existing-content");
          if (hiddenContent2.style.display === "none") {
              hiddenContent2.style.display = "block";
              existingContent.style.display = "none";
          } else {
              hiddenContent2.style.display = "none";
              existingContent.style.display = "block";
          }
  }
  function toggleContent3() {
    var hiddenContent3 = document.getElementById("hidden-content3");
      var existingContent = document.getElementById("existing-content");
          if (hiddenContent3.style.display === "none") {
              hiddenContent3.style.display = "block";
              existingContent.style.display = "none";
          } else {
              hiddenContent3.style.display = "none";
              existingContent.style.display = "block";
          }
  }


