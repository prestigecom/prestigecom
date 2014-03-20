
<section id="banner_submission" class="banner"></section>

<section class="contact_form_container max_width auto">
	<h2>Commencer un projet avec nous? <span>* Champs obligatoires</span></h2>
    
    <form name="submission_form" id="contact_form">
    	<label for="company">Nom de l'organisation <span>*</span></label>
    	<input type="text" name="company" id="company" />

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

        <h2 style="margin-top:20px;">Vous nous avez donné ce que nous avons besoin, mais nous aimerions en savoir plus.</h2>

        <label for="desc">Description du projet <span>*</span></label>
        <textarea name="desc" id="desc"></textarea>

        <div class="ov_hidden">
	        <div class="left" style="width:400px;">
		        <label for="date">Date de rendu du projet <span>*</span></label>
		        <input type="text" name="date" id="date" placeholder="jj/mm/aaaa" maxlength="10" />

		        <label for="budget">Votre budget</label>
		        <select name="budget" id="budget">
		        	<option value="250-500">250€ - 500€</option>
		        </select>

		        <input type="button" class="button" value="Envoyer" id="submit_submission_form" />
	        </div>
        </div>
    </form>
</section>