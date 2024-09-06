let currentIndex1 = 0;
let currentIndex2 = 0;
const slidesToShow = 3;

function nextSlide(sliderId) {
    if (sliderId === 1) {
        const maxIndex = document.querySelectorAll('#slider1 .slide').length;
        currentIndex1 = (currentIndex1 + 1) % maxIndex;
        showSlide(sliderId, currentIndex1);
    } else if (sliderId === 2) {
        const maxIndex = document.querySelectorAll('#slider2 .slide').length;
        currentIndex2 = (currentIndex2 + 1) % maxIndex;
        showSlide(sliderId, currentIndex2);
    }
}

function prevSlide(sliderId) {
    if (sliderId === 1) {
        const maxIndex = document.querySelectorAll('#slider1 .slide').length;
        currentIndex1 = (currentIndex1 - 1 + maxIndex) % maxIndex;
        showSlide(sliderId, currentIndex1);
    } else if (sliderId === 2) {
        const maxIndex = document.querySelectorAll('#slider2 .slide').length;
        currentIndex2 = (currentIndex2 - 1 + maxIndex) % maxIndex;
        showSlide(sliderId, currentIndex2);
    }
}


// 자동 슬라이드 (5초마다)
//setInterval(() => nextSlide(1), 5000);
//setInterval(() => nextSlide(2), 5000);