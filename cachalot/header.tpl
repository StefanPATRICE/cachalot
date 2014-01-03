<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang_iso}">
	<head>
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
        {if isset($meta_description) AND $meta_description}
                <meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
        {/if}
        {if isset($meta_keywords) AND $meta_keywords}
                <meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
        {/if}
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
		<meta http-equiv="content-language" content="{$meta_language}" />
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
		<script type="text/javascript">
			var baseDir = '{$content_dir}';
			var baseUri = '{$base_uri}';
			var static_token = '{$static_token}';
			var token = '{$token}';
			var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
			var priceDisplayMethod = {$priceDisplay};
			var roundMode = {$roundMode};
		</script>
        {if isset($css_files)}
            {foreach from=$css_files key=css_uri item=media}
            <link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
            {/foreach}
        {/if}
        {if isset($js_files)}
            {foreach from=$js_files item=js_uri}
            <script type="text/javascript" src="{$js_uri}"></script>
            {/foreach}
        {/if}
		{$HOOK_HEADER}
	</head>
	
	<body {if isset($page_name)}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if} class="{if isset($page_name)}page-{$page_name|escape:'htmlall':'UTF-8'}{/if}{if $content_only} content-only{/if}">

	{if !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
            <div id="restricted-country">
                <p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
            </div>
		{/if}

        {* Main Wrapper *}
		<div id="page" class="main-wrapper">

			{* Header *}
			<div id="header" class="site-header">
				<a id="header_logo" href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
					<img class="logo" src="{$logo_url}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}" {/if} />
				</a>

				{$HOOK_TOP}
			</div>

			<div id="columns" class="site-columns">

				{* Left column *}
				<div id="left_column" class="site-left-column">
					{$HOOK_LEFT_COLUMN}
				</div>

				{* Center column *}
				<div id="center_column" class="site-center-column">
	{/if}
