const ADDR = "10.17.201.104"
var canv;
var kin;
var id_joint = 0;

function setup(){
    canv = createCanvas(640, 480);
    noStroke();

    // kinectron init
    kin = new Kinectron(ADDR);
    kin.makeConnection();
    kin.startTrackedBodies(drawSkels);
}


function drawSkels(body){
    // console.log(body);
    background(230);

    for(let i=0; i<body.joints.length; i++){
        let joint = body.joints[i];
        
        // fill depending on the joint
        if(id_joint == i){ fill(255, 0, 0); }
        else { fill(80); }
        ellipse( joint.depthX*canv.width, joint.depthY*canv.height, 15, 15 );
    }
}


function keyPressed(){
    if(keyCode == UP_ARROW){
        id_joint++;
        console.log(id_joint);
    } else if(keyCode == DOWN_ARROW){
        id_joint--;
        console.log(id_joint);
    }
}