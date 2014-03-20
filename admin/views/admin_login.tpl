
<div class="login_box">
    <form name="login_form" action="{$ctrl_dir}user.ctrl.php" method="post">
        <!--label>Email</label>
        <input type="text" name="email" /-->
        <label>Mot de passe</label>
        <input type="password" name="password" />
        <div class="text_center">
        	<input type="hidden" name="actual_url" value="{$actual_url}" />
        	<input type="submit" name="submit_login_form" value="Connexion" class="blue_button" />
        </div>
    </form>
</div>
