(() => {
  
  // DOM Elements
  const productCards = document.querySelectorAll('.product__card');
  const btnSingIn = document.querySelector('#btn-signin');
  const inputBornDate = document.querySelector('#pet__bornDate__new');
  const calendar = document.querySelector('#calendar');
  const ctxLine = document.querySelector('#chart__line');
  const ctxDoughnut = document.querySelector('#chart__doughtnut');

  if(productCards) {
      // Click event on all productCards
      for(const card of productCards) {
          card.addEventListener('click', () => {
              window.location.href = './Shop_Item.html';
          });
      }
  }

  if(btnSingIn) {
      // Click event on Sign In Button
      const inputEmail = document.querySelector('#singin-email');
      btnSingIn.addEventListener('click', (e) => {
          e.preventDefault();
          if(inputEmail.value !== '') {
            window.location.href = '../_Home/Home.html';
          } else {
            window.location.href = '../_Admin/Home_admin.html';
          }
      });
  }

  if(inputBornDate) {
      // Set current date as value on input Date
      inputBornDate.valueAsDate = new Date();
  }

  if(calendar) {
      var fullCalendar = new FullCalendar.Calendar(calendar, {
          initialView: 'listWeek',
          height: 300,
          aspectRatio: 2,
          events: [
              {
                title: 'Cirugía Sala 202',
                start: '2021-04-01T14:30:00',
              //   extendedProps: {
              //     status: 'done'
              //   }
              },
              {
                title: 'Consulta Veterinaria',
                start: '2021-04-02T18:30:00',
              //   backgroundColor: 'green',
              //   borderColor: 'green'
              }
            ],
            eventDidMount: function(info) {
              if (info.event.extendedProps.status === 'done') {
          
                // Change background color of row
                info.el.style.backgroundColor = 'gray';
          
                // Change color of dot marker
                var dotEl = info.el.getElementsByClassName('fc-event-dot')[0];
                if (dotEl) {
                  dotEl.style.backgroundColor = 'white';
                }
              }
            }
      
      });
      fullCalendar.render();
  }

  if(ctxLine && ctxDoughnut) {
    const labelsLine = [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo'
    ];
  
    const labelsDoughnut = [
      'Perro',
      'Gato',
      'Conejo',
      'Loro'
    ]
    
    const chartLine = new Chart(ctxLine, {
      type: 'line',
      data: {
          labels: labelsLine,
          datasets: [{
            label: 'Pedidos',
            data: [8, 10, 14, 20],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
          },
          {
            label: 'Stock',
            data: [15, 12, 6, 4],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
          }]
      },
      options: {
          scales: {
              y: {
                  beginAtZero: true
              }
          }
      }
    });
    
    const chartDoughnut = new Chart(ctxDoughnut, {
      type: 'doughnut',
      data: {
          labels: labelsDoughnut,
          datasets: [{
            label: 'Mascotas',
            data: [6, 5, 3, 1],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
          }]
      },
      options: {
          scales: {
              y: {
                  beginAtZero: true
              }
          }
      }
    });
  
  
  }

  

  
})();