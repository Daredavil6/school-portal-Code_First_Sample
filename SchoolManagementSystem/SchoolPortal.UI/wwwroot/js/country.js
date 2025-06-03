var SchoolPortal = SchoolPortal || {};
SchoolPortal.Country = SchoolPortal.Country || {};

SchoolPortal.Country.DataTable = (function($) {
    'use strict';

    var init = function() {
        var myTable = $('#dynamic-table').DataTable({
            bAutoWidth: false,
            "aoColumns": [
                null, null,
                { "bSortable": false }
            ],
            "aaSorting": [],
            "pageLength": 10,
            "language": {
                "search": "Search:",
                "lengthMenu": "Show _MENU_ entries",
                "info": "Showing _START_ to _END_ of _TOTAL_ entries",
                "infoEmpty": "Showing 0 to 0 of 0 entries",
                "infoFiltered": "(filtered from _MAX_ total entries)",
                "paginate": {
                    "first": "First",
                    "last": "Last",
                    "next": "Next",
                    "previous": "Previous"
                }
            },
            dom: 'Bfrtip',
            buttons: [
                {
                    extend: 'copy',
                    className: 'btn btn-white btn-primary btn-bold',
                    text: '<i class="fa fa-copy bigger-110 pink"></i> <span class="hidden">Copy to clipboard</span>'
                },
                {
                    extend: 'csv',
                    className: 'btn btn-white btn-primary btn-bold',
                    text: '<i class="fa fa-database bigger-110 orange"></i> <span class="hidden">Export to CSV</span>'
                },
                {
                    extend: 'print',
                    className: 'btn btn-white btn-primary btn-bold',
                    text: '<i class="fa fa-print bigger-110 grey"></i> <span class="hidden">Print</span>'
                }
            ]
        });

        // Add tooltip for small view action buttons in dropdown menu
        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
    };

    // Tooltip placement on right or left
    function tooltip_placement(context, source) {
        var $source = $(source);
        var $parent = $source.closest('table')
        var off1 = $parent.offset();
        var w1 = $parent.width();

        var off2 = $source.offset();
        if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
        return 'left';
    }

    return {
        init: init
    };
})(jQuery);

// Initialize when document is ready
$(document).ready(function() {
    SchoolPortal.Country.DataTable.init();
}); 