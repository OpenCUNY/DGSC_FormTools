{ft_include file="indexheader.tpl"}

<div style="text-align:center;margin:auto">
     <a href="https://cunydgsc.org/"><img src="https://cunydgsc.org/images/avatars/dgsclogo.png"/></a>
</div>

  <div class="title" style="text-align:center;">
     <h1 style="margin-bottom:0;padding-bottom:0;">Welcome to the DGSC Chartered Organizations Portal!</h1>
     </div>

  <div style="width:100%;text-align:center;">
    <div style="width:600px;margin:auto;text-align:center;">{ft_include file="messages.tpl"}</div>
  </div>

  <div class="margin_bottom_large" style="width: 100%;display:block;text-align:center;">
     <div style="width:600px;margin:auto;text-align:center;">{$text_login}</div>
  </div>

  <form name="login" action="{$same_page}" method="post" style="text-align:center;">

    {if isset($upgrade_notification) && !empty($upgrade_notification)}
      <div class="notify" id="upgrade_notification">
        <div style="padding:8px">
          <span style="float: right; padding-left: 5px;"><a href="#" onclick="return ft.hide_message('upgrade_notification')">X</a></span>
          {$upgrade_notification}
        </div>
      </div>
      <br />
    {/if}

    <div class="login_panel">
      <div class="login_panel_inner">
        <table cellpadding="0" cellspacing="1">
        <tr>
          <td><label for="username">{$LANG.word_username}</label></td>
          <td><input type="text" name="username" id="username" value="{$username}" autofocus /></td>
        </tr>
        <tr>
          <td><label for="password">{$LANG.word_password}</label></td>
          <td><input type="password" name="password" id="password" value="" /></td>
        </tr>
        </table>

        <script>
        document.write('<input type="submit" class="login_submit" value="{$LANG.phrase_log_in|upper}">');
        </script>
        <div class="clear"></div>
      </div>

      {if $error}
        <div>
          <div class="login_error pad_left">{$error}</div>
        </div>
      {/if}
    </div>
  </form>
  
  <div style="width:100%, text-align:center;">
      <div style="text-align:center;margin:auto;"><a href="https://cunydgsc.org/">Back to CUNY DGSC</a></div>
  </div>

  <noscript>
    <div class="error" style="padding:6px;">
      {$LANG.text_js_required}
    </div>
  </noscript>

{ft_include file="indexfooter.tpl"}
