var toggle = document.getElementById('hamburger-toggle');

document.querySelectorAll('.header-link')
  .forEach(function(i) {
      i.addEventListener('click', function() {
        toggle.checked = false;
      });
  });

var flick = new Flickity('.main-carousel', {
  contain: true,
  percentPosition: true,
  pageDots: false,
  prevNextButtons: false,
  on: {
    change: onSlideChange
  }
});

var elem_idx = document.querySelector(".slideshow-idx");
elem_idx.textContent = flick.selectedIndex + 1;

var elem_left_arrow = document.querySelector(".slideshow-arrow--left");
var elem_right_arrow = document.querySelector(".slideshow-arrow--right");

function onSlideChange(idx) {
  elem_idx.textContent = idx + 1;

  if (idx == 0) {
    elem_left_arrow.classList.add("slideshow-arrow--muted");
  } else {
    elem_left_arrow.classList.remove("slideshow-arrow--muted");
  }

  if (idx + 1 == flick.slides.length) {
    elem_right_arrow.classList.add("slideshow-arrow--muted");
  } else {
    elem_right_arrow.classList.remove("slideshow-arrow--muted");
  }
}

elem_left_arrow.addEventListener('click', function() {
  flick.previous();
});

elem_right_arrow.addEventListener('click', function() {
  flick.next();
});

document.querySelector(".slideshow-slide-count").textContent = flick.slides.length;

if (flick.selectedIndex == 0) {
  elem_left_arrow.classList.add("slideshow-arrow--muted");
}
