import os 

# PATHS 
TASK_CONFIGS_PATH = 'task_conditions'
SCENE_PATH = 'd:\\ig_dataset\\scenes'
OBJECT_MODEL_PATH = 'D:\\gibson2_assets\\processed'

# PDDL 
SUPPORTED_PDDL_REQUIREMENTS = [':strips', ':negative-preconditions', ':typing', ':adl']


def get_object_filepath(object_category, object_category_instance):
    '''
    Generate object filename
    NOTE check if this needs to change
    '''
    return os.path.join(OBJECT_MODEL_PATH, object_category, object_category_instance, 'rigid_body.urdf')


def get_definition_filename(atus_activity, instance, domain=False):
    if domain:
        return os.path.join(TASK_CONFIGS_PATH, 'domain_igibson.pddl')
    else:
        return os.path.join(TASK_CONFIGS_PATH, atus_activity, 'problem%s.pddl' % instance)




