/**
 * Code for flanges
 */
FlotSamp.Flanges = {
    init: function() {
        $('#flanAlert').on('click', function(){
            var myMessage = 'flan';
            var itemMessage= this.getAttribute( 'data-message') ;
            FlotSamp.Flanges.alertMe2(myMessage, itemMessage);
            return false;
        });
        $.plot($("#placeholder2"), [ {yaxis: { max: 2 }, label: 'Dancing Phalanges', data: [[0, 0], [2, 2] ]  }]  );
        $.plot($('#mmmpie'), [{label: 'Series 1', data: 50}, {label: 'Series 2', data: 25}, {label: 'Series 3', data: 25} ], {series: {pie: { show: true }}});

    },
    alertMe2: function(myMessage, itemMessage) {
        alert(myMessage + itemMessage);
    }
};