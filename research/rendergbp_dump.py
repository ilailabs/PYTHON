"""
this will read your dump and create last dump a seperate file and create animation. Useing tachyonrenderer, openGBrenderer; using pileline object; feb-19;
"""

from ovito.io import *
# from ovito.io import import_file, export_file
from ovito.vis import Viewport, TachyonRenderer, OpenGLRenderer
#from ovito.modifiers import SliceModifier, ComputePropertyModifier
from ovito.modifiers import *
from ovito.data import SimulationCell, DataCollection, DataObject
import numpy
import sys

Leftv=str(sys.argv[1])+'_left.png'
gbp=str(sys.argv[1])+'_gbp.png'
# pipeline = import_file('file.lmp')
pipeline = import_file(str(sys.argv[1]),multiple_frames = True)
#i=6
#export_file(pipeline, "output.%i.dump" % i, frame=i)
 #uses the second argument as file ip
node = pipeline
#for i in range(node.source.num_frames):
#    export_file(node, "output.%i.dump" % i, "lammps_dump", frame=i)
nframes = node.source.num_frames #nos frames calc

export_file(node, "dump*.lmp", "lmp", columns= ["Particle Identifier", "Particle Type", "Position.X", "Position.Y", "Position.Z"],multiple_frames = True)#,frame = nframes) # multiple_frames = True)

## using object
# pipeline = import_file('lastframe.xyz')
#
# # pipeline =
# # atypes = pipeline.output.particle_properties.particle_type.type_list
# # Set atomic radii (required for polydisperse Voronoi tessellation).
# # atypes = pipeline.source.particle_properties.particle_type.type_list
# # atypes[0].radius = 0.8        # Si atomic radius (atom type 1 in input file)
# # atypes[1].radius = 0.3        # C atomic radius (atom type 2 in input file)
# # print(atypes[0].radius)
#
# #to get the sim cell dimensions
# # pipeline = pipeline2
# data=pipeline.compute()
# dim=data.cell.matrix
# lz=dim[2][2]
# # print(lz)
#
# pipeline.add_to_scene() #updat pipeline
# vp = Viewport(type = Viewport.Type.Left)
# vp.zoom_all()
# vp.render_image(filename=Leftv,
#                 #size=(320, 240),
#                 size=(640, 480),
#                 renderer=TachyonRenderer())
#
# slicegb = SliceModifier(distance=lz*0.5,
#                 normal = (0,0,1),
#                 slice_width = 0.3
#                 )
# pipeline.modifiers.append(slicegb)
#
# vp = Viewport(type = Viewport.Type.Top)
# vp.zoom_all()
# vp.render_image(filename=gbp,
#                 size=(640, 480),
#                 renderer=TachyonRenderer())
