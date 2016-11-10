function createPassageGradient(colorArray, shadesArray, percentages) {

  // Set up SVG container
  var svg = d3.select('.emotion-passage')
              .append('svg')
              .attr('width', 500)
              .attr('height', 100);

  //Append a defs (for definition) element to SVG
  var defs = svg.append("defs");

  //Append a linearGradient element to the defs and give it a unique id
  var linearGradient = defs.append("linearGradient")
                           .attr("id", "linear-gradient-passage");

  //Horizontal gradient
  linearGradient
  .attr("x1", "0%")
  .attr("y1", "0%")
  .attr("x2", "100%")
  .attr("y2", "0%")
  .attr("spreadMethod", "pad");

  // start at 0
  linearGradient.append("stop")
                  .attr("offset", '0%')
                  .attr("stop-color", shadesArray[0]); // yellow
  linearGradient.append("stop")
                  .attr("offset", percentages[0] + "%") // start at 23%
                  .attr("stop-color", shadesArray[1]);
  linearGradient.append("stop")
                  .attr("offset", (percentages[0] + percentages[1]) + "%") // start at 29%
                  .attr("stop-color", shadesArray[2]);
  linearGradient.append("stop")
                  .attr("offset", (percentages[0] + percentages[1] + percentages[2]) + "%")
                  .attr("stop-color", shadesArray[3]);
  linearGradient.append("stop")
                  .attr("offset", (percentages[0] + percentages[1] + percentages[2] + percentages[3]) + "%")
                  .attr("stop-color", shadesArray[4]);
  linearGradient.append("stop")
                  .attr("offset", '100%')
                  .attr("stop-color", shadesArray[4]);

  //Draw the rectangle and fill with gradient
  svg.append("rect")
  	.attr("width", "100%")
  	.attr("height", 100)
  	.style("fill", "url(#linear-gradient-passage)");

  // animating the gradient

  linearGradient.append("animate")
  .attr("attributeName","x2")
  .attr("values","50%;100%")
  .attr("dur","3s");

};

function createLyricsGradient(colorArray, shadesArray, percentages) {


  // Set up SVG container
  var svg = d3.select('.emotion-lyrics')
              .append('svg')
              .attr('width', 500)
              .attr('height', 100);

  //Append a defs (for definition) element to SVG
  var defs = svg.append("defs");

  //Append a linearGradient element to the defs and give it a unique id
  var linearGradient = defs.append("linearGradient")
                           .attr("id", "linear-gradient-lyrics");

  //Horizontal gradient
  linearGradient
  .attr("x1", "0%")
  .attr("y1", "0%")
  .attr("x2", "100%")
  .attr("y2", "0%")
  .attr("spreadMethod", "pad");

  // start at 0
  linearGradient.append("stop")
                  .attr("offset", '0%')
                  .attr("stop-color", shadesArray[0]); // yellow
  linearGradient.append("stop")
                  .attr("offset", percentages[0] + "%") // start at 23%
                  .attr("stop-color", shadesArray[1]);
  linearGradient.append("stop")
                  .attr("offset", (percentages[0] + percentages[1]) + "%") // start at 29%
                  .attr("stop-color", shadesArray[2]);
  linearGradient.append("stop")
                  .attr("offset", (percentages[0] + percentages[1] + percentages[2]) + "%")
                  .attr("stop-color", shadesArray[3]);
  linearGradient.append("stop")
                  .attr("offset", (percentages[0] + percentages[1] + percentages[2] + percentages[3]) + "%")
                  .attr("stop-color", shadesArray[4]);
  linearGradient.append("stop")
                  .attr("offset", '100%')
                  .attr("stop-color", shadesArray[4]);

  //Draw the rectangle and fill with gradient
  svg.append("rect")
    .attr("width", "100%")
    .attr("height", 100)
    .style("fill", "url(#linear-gradient-lyrics)");

  // animating the gradient

  linearGradient.append("animate")
  .attr("attributeName","x2")
  .attr("values","50%;100%")
  .attr("dur","3s");

};
