# areal-channel-mobility

These programs analyze overhead imagery to map the rate of movement of river systems, how they lose overlap with their original planforms, and how they rework the fluvial surfaces over which they move. These analyses are the basis for the work performed for [our 2013 JGR paper](http://onlinelibrary.wiley.com/doi/10.1029/2012JF002386) (reference below) to analyze experimental fluvial systems. They can also be used for rivers in the field.

### What does it do? Steps.

1. Import ortho-rectified photos and process into a series of binary "channel maps"
2. Measure the loss of planform overlap over variable time intervals
3. Measure the instantaneous rate of planform change.
4. Measure the fluvial surface reworking rate.
5. Plot.

These steps correspond to the folders with different sections of the code.

What it *does not* do is a **step 0** in creating the ortho-rectified photos -- I had photoshop scripts using panotools for that, based on what other scientists at SAFL did. Not sure where these are, but hopefully you have ortho-rectified photos and/or know your own lens corrections and how to apply them...!

### Citation

If you use this analysis routine in your work, please cite:<br>
**Wickert, A. D., J. M. Martin, M. Tal, W. Kim, B. Sheets, and C. Paola (2013), [River channel lateral mobility: metrics, time scales, and controls](http://onlinelibrary.wiley.com/doi/10.1029/2012JF002386), *J. Geophys. Res. Earth Surf.*, *118*(2), 396–412, doi:10.1029/2012JF002386.**

### Instructions

#### Part 1: CHANNELMAP

1. Place the set of uniformly-sized images into the input/pictures directory. The filenames of these images should be a time-stamp.
2. Place the binary mask bitmap (1=keep, 0= don't keep) inside the input/mask directory.
3. Specify the directory and variables in channelmap_vars.m within the channelmap program root folder. Especially important is the equation which controls the depth-map and the value at which this is thresholded for the channel-map.
4. Choose how time-steps should be output in time.m within the modules folder.
5. Write the eqation to determine the depthmap in depthmap.m within the modules folder.
6. Choose threshold and < or > in the module channelmap.m.
7. Optional, but highly encouraged: reduce error due to random noise in the thresholded channel-maps by running them through a smoothing filter in a batch process in photoshop or another image editor.

#### Part 2: OVERLAP

These codes analyze how much the channel loses overlap with an initial pattern with different lag times from an initial pattern.

1. Set the directories in overlap_vars.m in the overlap program root folder, and build an appropriate filesystem, or (recommended) use the provided one.
2. Run the code

#### Part 3: INSTANTANEOUS PLANFORM CHANGE

These codes measure a cross-sectional averaged rate of channel lateral mobility: this can be thought of as a migration rate plus avulsion magnitude times frequency.

Instructions: Same as above: set directories in the *_vars program and then run the code.

#### Part 4: FLUVIAL SURFACE REWORKING

These codes measure how quickly the active fluvial surface is reworked (i.e. visited by the channel).

Instructions: Same as above: set directories in the *_vars program and then run the code.

#### Part 5: PLOTTING

The different function titles explain what they do... really the kinds of plots that you want to create is up to you, so play around with them!

For starteres, though, the basic channel overlap and reworking plots are generated by:
* plot_tool.m
* plot_tool_decorr.m (here, "decorr" means "overlap", and is from the old "decorrelation terminology)
* MRzetadot.py

### Need help?

If you try to use this analysis routine in your work and get stuck because there is very little documentation (in spite of some good comments!), send a message to Andy Wickert, and he will take that as motivation to write better documentation. Or to just rewrite a bunch of the code, because this is the first big thing he ever wrote, and there are mcuh better ways to do it these days!
