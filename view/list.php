<?php
    $div_class_row = '<div class="row">';
    $div_class_card = '<div class="col-lg-4 col-sm-6 portfolio-item" style="display:-webkit-box;display:-webkit-flex; display:-ms-flexbox; display: flex;"><div class="card"><div class="card-body">';
    $div_end = '</div>';
    $videodata = '  <h4 class="card-title">Special title treatment</h4>
                    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                    <iframe width="100%" height="315" src="https://www.youtube.com/embed/D5t_sk6AUs4" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                ';
    $maxdata = 5;

    // １行に３個ずつ表示する
    for($i=0; $i<$maxdata; $i++){
        print($div_class_row);
        for($j=0; $j<3; $j++){
            print($div_class_card);
            print($videodata);
            print($div_end);
            print($div_end);
            print($div_end);
        }
        print($div_end);
    }
?>