(() => {
  // DOM Elements
  const productCards = document.querySelectorAll('.product__card');
  const btnSingIn = document.querySelector('.btn__Sing-In');
  const inputBornDate = document.querySelector('#pet__bornDate');
  const calendar = document.querySelector('#calendar');

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
      btnSingIn.addEventListener('click', (e) => {
          e.preventDefault();
          window.location.href = '../_Home/Home.html';
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

    


})();