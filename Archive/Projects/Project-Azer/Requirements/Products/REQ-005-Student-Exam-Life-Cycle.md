---
requirement_id: REQ-005
title: Student Exam and Learning Unit Quiz Lifecycle
priority: High
status: Approved
tags:
  - requirement
  - examination
  - quiz-lifecycle
  - progression-logic
  - certification
---

# Description
This requirement defines the complete end-to-end lifecycle of a student's examination process within a module's learning units, starting from answering the first quiz of a unit up to the final certification of the module.

- **Multiple Choice Format**: All quizzes are strictly Multiple Choice Questions (MCQ).
- **Unit Curriculum Structure**: Each learning unit contains its own educational content and associated quizzes (ranging from 1 to 5 quizzes per unit).
- **Single-Page Quiz Interface**: For any given learning unit, all of its quizzes are presented to the student on a single, dedicated screen/page, with a single global "Submit" button to submit answers for all quizzes simultaneously.
- **Progression Gating**: A student is blocked from transitioning to the next learning unit until they have successfully completed the quizzes for the current learning unit.
- **Success/Failure Threshold (50%)**:
  - If a student answers **less than 50%** of the quizzes correctly, they fail the assessment. They must retake the quizzes of the current unit, starting over from the first quiz to the last quiz in the next attempt.
  - If a student answers **50% or more** of the quizzes correctly, they pass the unit. The next learning unit in the module's sequence is immediately unlocked.
- **Module Completion & Certification**: Once a student has completed and passed all learning units within a specific module, the system automatically triggers the issuance of a digital completion certificate for that specific module.

# Acceptance Criteria
- **AC-001:** Verify that all quizzes associated with a learning unit are rendered on a single page of the user interface as Multiple Choice Questions (MCQ) and that there is exactly one global "Submit" button to submit all quiz responses.
- **AC-002:** Verify that a student is prevented from accessing or proceeding to Unit $N+1$ until they have completed and passed the quizzes for Unit $N$. The next unit must remain locked and unclickable in the curriculum menu.
- **AC-003:** Verify that if a student scores less than 50% correct answers on a unit's quizzes (e.g., 0/1, 0/2, 1/3, 1/4, 2/5), the attempt is marked as failed, the next learning unit remains locked, and the student is required to retake all quizzes on that page from the beginning (first quiz to last quiz).
- **AC-004:** Verify that if a student scores 50% or more correct answers on a unit's quizzes (e.g., 1/1, 1/2, 2/3, 2/4, 3/5), the assessment is marked as passed, and the next sequential learning unit is unlocked.
- **AC-005:** Verify that upon successfully passing the quizzes for the final learning unit of a module, the system automatically marks the module as completed and generates a digital certificate of completion for that module.
