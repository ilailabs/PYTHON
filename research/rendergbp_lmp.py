"""
render the GB microstructure using ovito python; specify the slicde distance; viewing angle; normal plane; slice width;feb-19
"""

from ovito.io import import_file
from ovito.vis import Viewport, TachyonRenderer, OpenGLRenderer
from ovito.modifiers import SliceModifier, ComputePropertyModifier
from ovito.data import SimulationCell, DataCollection, DataObject

import sys

Leftv=str(sys.argv[1])+'_left.png'
gbp=str(sys.argv[1])+'_gbp.png'
## using pipleline object
# pipeline = import_file('file.lmp')
pipeline = import_file(str(sys.argv[1])) #uses the second argument as file ip

## to get the sim cell dimensions
data=pipeline.compute()
dim=data.cell.matrix
lz=dim[2][2]
# print(lz)

pipeline.add_to_scene() ## updating pipeline
vp = Viewport(type = Viewport.Type.Left)
vp.zoom_all()
vp.render_image(filename=Leftv,
                #size=(320, 240),
                size=(640, 480),
                renderer=TachyonRenderer())

slicegb = SliceModifier(distance=lz*0.5,
                normal = (0,0,1),
                slice_width = 0.3
                )
pipeline.modifiers.append(slicegb)

vp = Viewport(type = Viewport.Type.Top)
vp.zoom_all()
vp.render_image(filename=gbp,
                size=(640, 480),
                renderer=TachyonRenderer())
