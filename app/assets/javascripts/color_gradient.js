// FROM TUTORIAL
//Append a defs (for definition) element to your SVG
var defs = svg.append("defs");

//Append a linearGradient element to the defs and give it a unique id
var linearGradient = defs.append("linearGradient")
.attr("id", "linear-gradient");

//Horizontal gradient
linearGradient
.attr("x1", "0%")
.attr("y1", "0%")
.attr("x2", "100%")
.attr("y2", "0%");

//Set the color for the start (0%)
linearGradient.append("stop")
.attr("offset", "0%")
.attr("stop-color", "#ffa474"); //light blue

//Set the color for the end (100%)
linearGradient.append("stop")
.attr("offset", "100%")
.attr("stop-color", "#8b0000"); //dark blue

//Draw the rectangle and fill with gradient
svg.append("rect")
	.attr("width", 300)
	.attr("height", 20)
	.style("fill", "url(#linear-gradient)");

  //Append multiple color stops by using D3's data/enter step
linearGradient.selectAll("stop")
    .data([
        {offset: "0%", color: "#2c7bb6"},
        {offset: "12.5%", color: "#00a6ca"},
        {offset: "25%", color: "#00ccbc"},
        {offset: "37.5%", color: "#90eb9d"},
        {offset: "50%", color: "#ffff8c"},
        {offset: "62.5%", color: "#f9d057"},
        {offset: "75%", color: "#f29e2e"},
        {offset: "87.5%", color: "#e76818"},
        {offset: "100%", color: "#d7191c"}
      ])
    .enter().append("stop")
    .attr("offset", function(d) { return d.offset; })
    .attr("stop-color", function(d) { return d.color; });

    //A color scale
var colorScale = d3.scale.linear()
    .range(["#2c7bb6", "#00a6ca","#00ccbc","#90eb9d","#ffff8c","#f9d057","#f29e2e","#e76818","#d7191c"]);

//Append multiple color stops by using D3's data/enter step
linearGradient.selectAll("stop")
    .data( colorScale.range() )
    .enter().append("stop")
    .attr("offset", function(d,i) { return i/(colorScale.range().length-1); })
    .attr("stop-color", function(d) { return d; });
