/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function() {
    $("#accordion").accordion();
    $("#pencere").dialog();

    $('#tikla').click(function() {
        $("#pencere").dialog('open');
    });

});