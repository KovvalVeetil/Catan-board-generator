function generateBoard() {
    fetch('/boards', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      }
    })
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => displayBoard(data))
    .catch(error => console.error('Error generating board:', error));
  }
  
  function displayBoard(data) {
    const boardContainer = document.getElementById('board-container');
    boardContainer.innerHTML = '';
  
    const { tiles, numbers } = data;
    tiles.forEach((tile, index) => {
      const tileDiv = document.createElement('div');
      tileDiv.className = 'tile';
      tileDiv.innerHTML = `${tile} - ${numbers[index] || ''}`;
      boardContainer.appendChild(tileDiv);
    });
  }
  