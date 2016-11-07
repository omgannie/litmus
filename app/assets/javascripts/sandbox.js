// // produces a green to red diagonal gradient
//   var width = 960,
//   height = 500;
//
//   var svg = d3.select("body").append("svg")
//               .attr("width", width)
//               .attr("height", height);
//
//   var gradient = svg.append("defs")
//                     .append("linearGradient")
//                     .attr("id", "gradient")
//                     .attr("x1", "0%")
//                     .attr("y1", "0%")
//                     .attr("x2", "100%")
//                     .attr("y2", "0%")
//                     .attr("spreadMethod", "pad");
//
//   gradient.append("stop")
//           .attr("offset", "0%")
//           .attr("stop-color", "#0c0")
//           .attr("stop-opacity", 1);
//
//   gradient.append("stop")
//           .attr("offset", "100%")
//           .attr("stop-color", "#c00")
//           .attr("stop-opacity", 1);
//
//   svg.append("rect")
//      .attr("width", width)
//      .attr("height", height)
//      .style("fill", "url(#gradient)");
