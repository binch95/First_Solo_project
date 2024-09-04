let currentIndex1 = 0;
let currentIndex2 = 0;
const slidesToShow = 3;

function showSlide(sliderId, index) {
    const slidesContainer = document.querySelector(`#slider${sliderId} table`);
    slidesContainer.style.transform = 'translateX(' + (-index * (100 / slidesToShow)) + '%)';
}

function nextSlide(sliderId) {
    if (sliderId === 1) {
        const maxIndex = document.querySelectorAll('#slider1 .slide').length - slidesToShow;
        currentIndex1 = (currentIndex1 + 1) > maxIndex ? 0 : currentIndex1 + 1;
        showSlide(sliderId, currentIndex1);
    } else if (sliderId === 2) {
        const maxIndex = document.querySelectorAll('#slider2 .slide').length - slidesToShow;
        currentIndex2 = (currentIndex2 + 1) > maxIndex ? 0 : currentIndex2 + 1;
        showSlide(sliderId, currentIndex2);
    }
}

function prevSlide(sliderId) {
    if (sliderId === 1) {
        const maxIndex = document.querySelectorAll('#slider1 .slide').length - slidesToShow;
        currentIndex1 = (currentIndex1 - 1) < 0 ? maxIndex : currentIndex1 - 1;
        showSlide(sliderId, currentIndex1);
    } else if (sliderId === 2) {
        const maxIndex = document.querySelectorAll('#slider2 .slide').length - slidesToShow;
        currentIndex2 = (currentIndex2 - 1) < 0 ? maxIndex : currentIndex2 - 1;
        showSlide(sliderId, currentIndex2);
    }
}

// 자동 슬라이드 (5초마다)
//setInterval(() => nextSlide(1), 5000);
//setInterval(() => nextSlide(2), 5000);