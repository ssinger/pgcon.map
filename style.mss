Map {
  background-color: #ffffff;
}



#water {
  polygon-opacity:1;
  polygon-fill:#0066ff 
  
}

#buildings {
  line-color:#FFFFFF;
  line-width:1;
  polygon-opacity:1;
  polygon-fill:#DCEDEA;
  [name='Desmarais Building'],[name='Royal Oak'] {
       polygon-fill:#AA44FF;
      
   }
}

#roads-path {
    line-width: 1;
    line-color: #000000;
    line-dasharray: 3,3;
  
    
}
#roads-minor {
    ::outline {
      line-width:10;
      line-color: #000000;
    }
    line-width: 8;
    line-color:lighten(#ffbe28,30%);
  
    
}


#roads-major {
  ::outline {
      line-width:12;
      line-color: #000000;
    }
    line-width:10;
    line-color:#ffbe28;
    line-cap:round;
    line-join:round;
    
}


#roads-major::names {
    text-name: '[name]';
    text-face-name: 'DejaVu Sans Mono Book';
    text-placement: line;
    text-size: 12;
    text-spacing: 10;
    text-allow-overlap: false;
    text-avoid-edges:true;
}


#roads-minor::names {
    text-name: '[name]';
    text-face-name: 'DejaVu Sans Mono Book';
    text-placement: line;
    text-size: 10;
    text-spacing: 600;
    text-allow-overlap: false;
    text-avoid-edges:true;
}

#buildingnames {
  [name='Desmarais Building'],[name='Royal Oak'] {
     text-name: '[name]';
     text-face-name: 'DejaVu Sans Mono Bold';
     text-size: 12;
     text-allow-overlap: true;
     
   }
}

.food {
  [zoom >= 16] {
    point-allow-overlap: true;
      [amenity='pub'],[amenity='bar'] {
        point-file: url('img/food_bar.n.16.png');
        point-allow-overlap:true;
      }
      [amenity='cafe'] {
        point-file: url('img/food_cafe.n.16.png');
     
      }
      [amenity='restaraunt'],[amenity='fast_food'] {
        point-file: url('img/food_restaurant.n.16.png');
      }
   }
   [zoom >= 18 ] {
      text-name: '[name]';
      text-face-name: 'DejaVu Sans Mono Book';
      text-size: 12;
      text-dy: 10 ;
      text-allow-overlap: true;
    }
 }

.hotel {
    [zoom >= 16 ] {
      [tourism='motel'],[tourism='hotel'] {
        point-file: url('img/accommodation_hotel2.n.16.png');
        point-allow-overlap: true;
      }
    }
   [zoom >= 18 ] {
      text-name: '[name]';
      text-face-name: 'DejaVu Sans Mono Book';
      text-size: 12;
      text-dy: 10 ;
      text-allow-overlap: true;
    }
}