
$(function() {


marqueeInit({
  uniqueid: 'mycrawler2',
  style: {
    'padding': '2px',
    'width': '1000px',
    'max-height': '180px'
  },
  inc: 2, //speed - pixel increment for each iteration of this marquee's movement
  mouse: 'pause', //mouseover behavior ('pause' 'cursor driven' or false)
  moveatleast: 2,
  neutral: 150,
  savedirection: true,
  random: true
});
});