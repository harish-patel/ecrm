function validateAndSaveLead()
{
    jQuery(function($)
    {
        var websiteStr = $('#website').val();
        var id = $('input[name="record"]').val();
        $.ajax( {
            url : "index.php",
            data : "module=Leads&action=checkDuplicateWebsite&website="+websiteStr+"&leadid="+id,
            success : function(data) {
                if(data == 'Duplicate')
                {
                    YAHOO.SUGAR.MessageBox.show({
                        msg: 'Another lead exists with same value for field Website. Do you still want to continue?', 
                        title: 'Duplicate value for "Website"', 
                        type: 'confirm',
                        fn: function(confirm) {
                            if (confirm == 'yes') {
                                // do something if 'Yes' was clicked
                                document.forms.EditView.action.value="Save";
                                if(check_form("EditView"))
                                {
                                    document.forms.EditView.submit();
                                }
                                return true;
                            }
                            if (confirm == 'no') {
                                // do something if 'No' was clicked
                                return false;
                            }
                        }
                    });
                }
                else 
                {
                    document.forms.EditView.action.value="Save";
                    if(check_form("EditView"))
                    {
                        document.forms.EditView.submit();
                    }
                }
            }
        });
        
        return false;
    });
}
