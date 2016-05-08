(function($){
    'use strict';
    
    $('.action_response > span').on('click', function(){
        $(this).parent().hide();
    });
    
    $('.delete_post_request').on('click', function(){
        var delete_form = $(this).next('.delete_post_confirmation');
        modal(delete_form);
    });
    
    $('.canncel_delete').on('click', function(){
        $(this).trigger('closeModal');
    });
    
    function modal(el){
        $(el).easyModal({
            top: 200,
            autoOpen: true,
            overlayOpacity: 0.3,
            overlayColor: "#333",
            overlayClose: true,
            closeOnEscape: true
        });
    }
    
})(jQuery);