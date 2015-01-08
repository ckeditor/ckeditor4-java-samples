/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

(function(){
	window.SAMPLE_APP = ( function() {
	  var SAMPLE_APP = {
		  showHide : function() {
				var desc = document.getElementById( 'moreText' ), 
					linkMore = document.getElementById( 'showMore' );
				if ( desc ) {
					if ( !desc.style.display || desc.style.display === 'none' ) {
						desc.style.display = 'block';
						linkMore.style.display = 'none';
					} else {
						desc.style.display = 'none';
						linkMore.style.display = '';
					}
				}
			} 
	  };
	   return SAMPLE_APP;
	})();
})();