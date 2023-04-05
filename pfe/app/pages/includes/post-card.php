<div class="col-md-6">
  <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
    <div class="col p-4 d-flex flex-column position-static">
      <strong class="d-inline-block mb-2 text-primary"><?=esc($row['category'] ?? 'Unknown')?></strong>
      
      <a href="<?=ROOT?>/post/<?=$row['slug']?>">
        <h3 class="mb-0"><?=esc($row['title'])?></h3>
      </a>
      <div class="mb-1 text-muted"><?=date("jS M, Y",strtotime($row['date']))?></div>
      <a href="<?=ROOT?>/post/<?=$row['slug']?>" class="stretched-link">Continuer la lecture.... </a>
    </div>
    <div class="col-lg-5 col-12 d-lg-block">
      <a href="<?=ROOT?>/post/<?=$row['slug']?>">
        <img class="bd-placeholder-img w-100" width="200" height="250" style="object-fit:cover;" src="<?=get_image($row['image'])?>">
      </a>
    </div>
  </div>
</div>