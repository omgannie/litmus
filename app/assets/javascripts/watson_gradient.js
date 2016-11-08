function createGradient() {
  // Set up SVG container
  var svg = d3.select('body')
              .append('svg')
              .attr('width', 500)
              .attr('height', 100);

  //Append a defs (for definition) element to SVG
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

  //Set the color for the start (anger section) (0%)
  linearGradient.append("stop")
                .attr("offset", "0%")
                .attr("stop-color", "red"); //red

  //Set the color for the middle left (disgust section) (30%)
  linearGradient.append("stop")
                .attr("offset", "30%")
                .attr("stop-color", "green"); //green

  //Set color for mid - middle (fear section) (50%)
  linearGradient.append('stop')
                .attr('offset', '50%')
                .attr("stop-color", "black")

  //Set color for middle right (joy) (70%)
  linearGradient.append('stop')
                .attr('offset', '70%')
                .attr('stop-color', 'yellow')

  //Set the color for the end (sadness) (100%)
  linearGradient.append("stop")
                .attr("offset", "100%")
                .attr("stop-color", "#8b0000"); //dark blue

  //Draw the rectangle and fill with gradient
  svg.append("rect")
  	.attr("width", 300)
  	.attr("height", 20)
  	.style("fill", "url(#linear-gradient)");

};
