    (function ($) {
        function toggleLabel() {
            var input = $(this);
            setTimeout(function () {
                var def = input.attr('title');
                if (!input.val() || (input.val() == def)) {
                    input.prev('span').css('visibility', '');
                    if (def) {
                        var dummy = $('<label></label>').text(def).css('visibility', 'hidden').appendTo('body');
                        input.prev('span').css('margin-left', dummy.width() + 3 + 'px');
                        dummy.remove();
                    }
                } else {
                    input.prev('span').css('visibility', 'hidden');
                }
            }, 0);
        };

        function resetField() {
            var def = $(this).attr('title');
            if (!$(this).val() || ($(this).val() == def)) {
                $(this).val(def);
                $(this).prev('span').css('visibility', '');
            }
        };
        $('input').live('keydown', toggleLabel);
		$('.comments_txtarea').live('keydown',toggleLabel);
		
        $('input').live('paste', toggleLabel);
		$('.comments_txtarea').live('paste',toggleLabel);
		
        $('input').live('focusin', function () {
            $(this).prev('span').css('color', '#ccc');
        });
		
		$('.comments_txtarea').live('focusin', function () {
			$(this).prev('span').css('color', '#ccc');
		});
		
        $('input').live('focusout', function () {
            $(this).prev('span').css('color', '#ccc');
        });
		
		$('.comments_txtarea').live('focusout', function () {
			$(this).prev('span').css('color', '#ccc');
		});

        $(function () {
            $('input').each(function () {
                toggleLabel.call(this);
            });
        });
    })(jQuery);