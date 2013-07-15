/**
 * Code for filberts
 */
FlotSamp.Filberts = {
    init: function() {
        $('#filAlert').on('click', function(){
            var myMessage = 'fil';
            var itemMessage= this.getAttribute( 'data-message') ;
            FlotSamp.Filberts.alertMe(myMessage, itemMessage);
            return false;
        });
        $.plot($("#placeholder"), [ {yaxis: { max: 2 }, label: 'Dancing Phalanges', data: [[0, 0], [2, 2] ]  }]  );
        $.plot($('#somepie'), [{label: 'Series 1', data: 50}, {label: 'Series 2', data: 25}, {label: 'Series 3', data: 25} ], {series: {pie: { show: true }}});
        $.plot($('#morepie'),gon.gezuntas_sum,{
            series: {
                pie: {
                    show: true
                }
            },
            legend: {
                show: false
            }
        } );
    },
    alertMe: function(myMessage, itemMessage) {
        alert(myMessage + itemMessage);
    }


};
