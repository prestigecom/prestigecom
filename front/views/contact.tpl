
<section class="banner">
	<div id="google_map" data-adr="53 rue Cristino Garcia 93210 Saint-Denis France"></div>
</section>

<section class="contact_form_container max_width auto">
	<h2>Commencer un projet avec nous? <span>* Champs obligatoires</span></h2>
    
    <form name="contact_form" id="contact_form">
        <div class="ov_hidden">
            <div class="left">
                <label for="last_name">Nom <span>*</span></label>
                <input type="text" name="last_name" id="last_name" />
            </div>
            <div class="right">
                <label for="first_name">Prénom <span>*</span></label>
                <input type="text" name="first_name" id="first_name" />
            </div>
        </div>

    	<div class="ov_hidden">
            <div class="left">
                <label for="email">Email <span>*</span></label>
                <input type="text" name="email" id="email" />
            </div>
            <div class="right">
                <label for="website">Site web</label>
                <input type="text" name="website" id="website" />
            </div>
        </div>

        <label for="desc">Message <span>*</span></label>
        <textarea name="desc" id="desc"></textarea>
        
        <div class="ov_hidden cf_footer">
        	<div class="left">
            	<label for="root">Comment nous avez-vous connu? <span>*</span></label>
                <select name="root" id="root" style="height:37px;">
                	<option value=""></option>
                    <option value="social">Réseaux sociaux</option>
                    <option value="blog">Blog</option>
                    <option value="other">Autre...</option>
                </select>
                
                <input type="button" class="button" value="Envoyer" id="submit_contact_form" />
            </div>
            {if !$is_google}
            <ul class="contact_infos open_sans">
            	<li id="ci_adr">53 rue Cristino Garcia<br />93210 St Denis</li>
                <li id="ci_facebook"><a href="#">furiouscreation</a></li>
                <li id="ci_tel">01 80 60 48 43<br />06 50 92 46 85</li>
                <li id="ci_twitter"><a href="#">@furiouscreation</a></li>
            </ul>
            {/if}
        </div>
    </form>
</section>