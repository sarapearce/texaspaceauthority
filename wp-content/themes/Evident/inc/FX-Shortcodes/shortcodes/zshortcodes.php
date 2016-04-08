<?php


class FxShortcodes {

    function __construct() 
    {	
    	require_once( TEMPLATEPATH .'/inc/FX-Shortcodes/shortcodes/shortcodes.php' );
    	define('ZILLA_TINYMCE_URI', get_template_directory_uri() .'/inc/FX-Shortcodes/shortcodes/tinymce');
		define('ZILLA_TINYMCE_DIR', get_template_directory_uri() .'/inc/FX-Shortcodes/shortcodes/tinymce');
		
        add_action('init', array(&$this, 'init'));
        add_action('admin_init', array(&$this, 'admin_init'));
	}
	
	/**
	 * Registers TinyMCE rich editor buttons
	 *
	 * @return	void
	 */
	function init()
	{
		if( ! is_admin() )
		{
			wp_enqueue_style( 'fx-shortcodes',  get_template_directory_uri() . '/inc/FX-Shortcodes/shortcodes/shortcodes.css' );
			wp_enqueue_script( 'jquery-ui-accordion' );
			wp_enqueue_script( 'jquery-ui-tabs' );
			wp_enqueue_script( 'fx-shortcodes-lib', get_template_directory_uri() . '/inc/FX-Shortcodes/shortcodes/js/fx-shortcodes-lib.js', array('jquery', 'jquery-ui-accordion', 'jquery-ui-tabs') );
		}
		
		if ( ! current_user_can('edit_posts') && ! current_user_can('edit_pages') )
			return;
	
		if ( get_user_option('rich_editing') == 'true' )
		{
			add_filter( 'mce_external_plugins', array(&$this, 'add_rich_plugins') );
			add_filter( 'mce_buttons', array(&$this, 'register_rich_buttons') );
		}
	}
	
	// --------------------------------------------------------------------------
	
	/**
	 * Defins TinyMCE rich editor js plugin
	 *
	 * @return	void
	 */
	function add_rich_plugins( $plugin_array )
	{
		$plugin_array['fxShortcodes'] = ZILLA_TINYMCE_URI . '/plugin.js';
		return $plugin_array;
	}
	
	// --------------------------------------------------------------------------
	
	/**
	 * Adds TinyMCE rich editor buttons
	 *
	 * @return	void
	 */
	function register_rich_buttons( $buttons )
	{
		array_push( $buttons, "|", 'fx_button' );
		return $buttons;
	}
	
	/**
	 * Enqueue Scripts and Styles
	 *
	 * @return	void
	 */
	function admin_init()
	{
		// css
		wp_enqueue_style( 'fx-popup', ZILLA_TINYMCE_URI . '/css/popup.css', false, '1.0', 'all' );
		
		// js
		wp_enqueue_script( 'jquery-ui-sortable' );
		wp_enqueue_script( 'jquery-livequery', ZILLA_TINYMCE_URI . '/js/jquery.livequery.js', false, '1.1.1', false );
		wp_enqueue_script( 'jquery-appendo', ZILLA_TINYMCE_URI . '/js/jquery.appendo.js', false, '1.0', false );
		wp_enqueue_script( 'base64', ZILLA_TINYMCE_URI . '/js/base64.js', false, '1.0', false );
		wp_enqueue_script( 'fx-popup', ZILLA_TINYMCE_URI . '/js/popup.js', false, '1.0', false );
		
		wp_localize_script( 'jquery', 'FxShortcodes', array('plugin_folder' => get_template_directory_uri() .'/inc/FX-Shortcodes/shortcodes') );
	}
    
}
$fx_shortcodes = new FxShortcodes();

?>