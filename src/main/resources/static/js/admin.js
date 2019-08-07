/**
 * 
 */

  $(document).on("click", '.open-Dialog', function () {
		console.log('hi');

    // $('#addDialog').modal('show')
    // var button = $(event.relatedTarget) // Button that triggered the modal
	var name = $(this).data('name')
	var description = $(this).data('description')
    var price = $(this).data('price')
    var url = $(this).data('url')
    var id =  $(this).data('id')
    var cat = $(this).data('catergory')
    
    var product = { name: $(this).data('name'),
					description: $(this).data('description'),
					price: $(this).data('price'),
					url: $(this).data('url'),
					id:  $(this).data('id')
    				}
// $('form')[0].setAttribute('action', "/editProduct/${i.getId()}");
	
	
	// Extract info from data-* attributes
//	 $(".modal-body #editForm")[0].setAttribute('modelAttribute',product);

 $(".modal-body #editProductName").val( name )
 $(".modal-body #editDescription").val( description )
 $(".modal-body #editCategory").val( cat )
 $(".modal-body #editPrice").val( price )
 $(".modal-body #editPictureUrl").val( url )

  
    // If necessary, you could initiate an AJAX request here (and then do the
	// updating in a callback).
    // Update the modal's content. We'll use jQuery here, but you could use a
	// data binding library or other methods instead.
    // var modal = $(this)
    // modal.find('.modal-title').text('New message to ' + recipient)
    // modal.find('#event_name').val("Hi")
  });