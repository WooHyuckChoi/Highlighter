// ... 기존 코드
const passport = require('./passport.js');
const SocketIo = require('socket.io'); // 추가
const socketEvents = require('./socket.js'); // 추가
// ... 기존 코드
const server = app.listen(8080, () => { // const server 부분 추가
  console.log('Express App on port 8080!');
});
const io = new SocketIo(server); // socket.io와 서버 연결하는 부분
socketEvents(io); // 아까 만든 이벤트 연결