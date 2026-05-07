# Cowork

This is the starting point for all the tasks needed to be done for the all the companies where there are contributions.

Every company is treated as a separate project, and all the projects are located in the `projects` directory.

The main idea is to work in this projects as we work in Claude Cowork, were the consolidated directory is where all the final outputs and reviewed files are stored, and all the new work is done in the `tasks` directory, where we create a new folder for each task with the following format: `YYYYMMDD-hhmm-[slug]/`.

Each project has:
    - `consolidated/`: where all the final outputs are stored.
    - `tasks/` — write temp task files here. Name subfolders `YYYYMMDD-hhmm-[slug]/`.

AI instructions are written in `AGENTS.md` and the `CLAUDE.md` files, which are located in the root of the repo and in each project folder, where we specify the rules and instructions for each project.

So, when I want to work in a task for a specific project, the AI assistant (Claude Cowork/Code or Opencode) should create a new folder in the `tasks` directory of that project, and write all the work there. Eventually, when the task is finished, the user will move the final output to the `consolidated` directory, and delete the task folder.

All the tasks folder are candidated to be deleted because the real output is the one in the consolidated folder, and the tasks folder are just a temporary space to work on the task.

Eventually, the output content should be moved to a service as Google Drive and then get the links to this content and used from there via and skill or fetch calls, but for now we will work with the files in the repo.

Into the `consolidated/` folder, there will be a `.memory` folder with a MEMORY.md file, where we will store all the relevant information for the project that is not in the rest of the consolidated folder but we realize, when working in a task, that is important to keep track of. The main AI assistant (Claude Cowork/Code or Opencode) should read this MEMORY.md file before starting to work on a task, and update it with any relevant information that is generated during the task. The MEMORY.md file works as a index for the memory notes, so this file references the other memory notes in the `.memory` folder, which are the ones that actually store the information. The idea is to keep the MEMORY.md file as an index of the memory notes, and not to store all the information in it, because it can get too long and hard to manage.

The AI assistant should determine in what project we are working on, so be able to create the new task folder in the right project, and also be able to read the MEMORY.md file of the project to get all the relevant information before starting to work on the task.
