<?php require_once APPROOT . '/views/includes/header.php'; ?>

<!-- Voor het centreren van de container gebruiken we het boorstrap grid -->
<div class="container">
    <div class="row mt-3">

        <div class="col-2"></div>

        <div class="col-8">

            <h3><?php echo $data['title']; ?></h3>

            <a href="<?= URLROOT; ?>/cyberaanvallen/index ">Top 5 Cyberaanvallen</a>

        </div>

        <div class="col-2"></div>

    </div>

</div>

<?php require_once APPROOT . '/views/includes/footer.php'; ?>